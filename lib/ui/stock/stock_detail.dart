// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:stock_market_game/domain/entity/company_full_data.dart';

import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/routing/router.dart';
import 'package:stock_market_game/ui/core/stock_graph.dart';
import 'package:stock_market_game/ui/stock/stock_detail_vm.dart';
import 'package:stock_market_game/ui/stock/stock_tag_view.dart';
import 'package:stock_market_game/utils/dimensions.dart';

import '../trade stocks/buy_stock_view.dart';

class StockDetail extends ConsumerStatefulWidget {
  String symbol;
  StockDetail({super.key, required this.symbol});

  @override
  ConsumerState<StockDetail> createState() => _StockDetailState();
}

class _StockDetailState extends ConsumerState<StockDetail> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state =
        ref.watch(getCompanyInformationProvider(symbol: widget.symbol));

    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: state.when(
              data: (data) => Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              StockTopBar(
                                  companyInformation: data.companyInformation,
                                  price: data.price,
                                  priceChange: data.priceChange),
                             StockGraph(symbol: widget.symbol),
                              CompanyInformationView(
                                companyInformation: data.companyInformation,
                                image: data.image,
                              )
                            ],
                          ),
                        ),
                      ),
                      StockBottomBar(price: data.price,companyFullData: data,)
                    ],
                  ),
              error: (error, st) => Container(),
              loading: () => Center(child: CircularProgressIndicator())),
        ));
  }
}

class StockBottomBar extends StatelessWidget {
  final CompanyFullData companyFullData;
  final double price;
  const StockBottomBar({
    super.key,
    required this.price,
    required this.companyFullData
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.size14),
      child: Row(
        spacing: Dimensions.size12,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Quote'),
              Text(
                price.toStringAsFixed(2),
                style: TextTheme.of(context)
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Expanded(
              child: ElevatedButton(onPressed: ()=> showBuyStockBottomSheet(context:  context,fullData:  companyFullData) , child: Text('Buy'))),
          Expanded(
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: () {},
                child: Text('Sell')),
          )
        ],
      ),
    );
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
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: Dimensions.size8,
            children: [
              priceChange > 0 ? Icon(Icons.arrow_upward,color: Colors.green,) : Icon(Icons.arrow_downward,color: Colors.red,),
              Text(
                priceChange.toStringAsFixed(2),
                style: TextTheme.of(context)
                    .titleLarge!
                    .copyWith(color: priceChange > 0 ? Colors.green : Colors.red),
              ),
            ],
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
          Text(companyInformation.description,maxLines: 5,overflow: TextOverflow.ellipsis,),
          SizedBox(
            height: Dimensions.size14,
          ),
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
                      style: TextTheme.of(context)
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
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
                      style: TextTheme.of(context)
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
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
