// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/ui/core/stock_graph.dart';
import 'package:stock_market_game/ui/stock/stock_detail_vm.dart';
import 'package:stock_market_game/ui/stock/stock_tag_view.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class StockDetail extends ConsumerStatefulWidget {
  String symbol;
  StockDetail({super.key, required this.symbol});

  @override
  ConsumerState<StockDetail> createState() => _StockDetailState();
}

class _StockDetailState extends ConsumerState<StockDetail> {
  late StockInformationRequest stockInformationRequest;

  @override
  void initState() {
    stockInformationRequest = StockInformationRequest(symbol: widget.symbol);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state =
        ref.watch(getCompanyInformationProvider(symbol: widget.symbol));
    final stockPrices = ref
        .watch(getHistoricalBarDataProvider(request: stockInformationRequest));
    return Scaffold(
        appBar: AppBar(),
        body: state.when(
            data: (data) => SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StockTopBar(
                          companyInformation: data.companyInformation,
                          price: data.price,
                          priceChange: data.priceChange),
                      stockPrices.when(
                          data: (data) => StockGraph(
                              prices: data,
                              callBack: (timeFrame) {
                                setState(() {
                                  stockInformationRequest =
                                      StockInformationRequest(
                                          symbol: widget.symbol,
                                          timeFrame: timeFrame);
                                });
                              }),
                          error: (error, st) => Container(),
                          loading: () =>
                              Center(child: CircularProgressIndicator())),
                      CompanyInformationView(
                        companyInformation: data.companyInformation,
                        image: data.image,
                      )
                    ],
                  ),
                ),
            error: (error, st) => Container(),
            loading: () => Center(child: CircularProgressIndicator())));
  }
}

class StockTopBar extends StatelessWidget {
  CompanyInformation companyInformation;
  double price, priceChange;
  StockTopBar({
    Key? key,
    required this.companyInformation,
    required this.price,
    required this.priceChange,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.size14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Dimensions.size8,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(companyInformation.symbol),
          Text(
            companyInformation.name,
            style: TextTheme.of(context).headlineMedium,
          ),
          Text(
            price.toString(),
            style: TextTheme.of(context).headlineMedium,
          ),
          Text(
            priceChange.toStringAsFixed(2),
            style: TextTheme.of(context)
                .titleLarge!
                .copyWith(color: priceChange > 0 ? Colors.green : Colors.red),
          )
        ],
      ),
    );
  }
}

class CompanyInformationView extends StatelessWidget {
  CompanyInformation companyInformation;
  String image;
  CompanyInformationView({
    Key? key,
    required this.companyInformation,
    required this.image,
  }) : super(key: key);

  formatNumber(dynamic myNumber) {
    String stringNumber = myNumber.toString();

    double doubleNumber = double.tryParse(stringNumber) ?? 0;

    NumberFormat numberFormat = new NumberFormat.compactLong();

    return numberFormat.format(doubleNumber);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.size14),
      child: Column(
        spacing: Dimensions.size8,
        children: [
          StockTagView(
              company: Company(
                  name: companyInformation.name,
                  ticker: companyInformation.symbol,
                  image: image)),
          Text(companyInformation.description),
          SizedBox(height: Dimensions.size14,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Dimensions.size14,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: Dimensions.size12,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Market Captilization"),
                    Text(
                      formatNumber(companyInformation.marketCapitalization),
                      style: TextTheme.of(context).titleMedium!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: Dimensions.size12,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Industry"),
                    Text(
                      companyInformation.industry,
                      style: TextTheme.of(context).titleMedium!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
