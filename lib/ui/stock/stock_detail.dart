// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
import 'package:stock_market_game/ui/core/stock_graph.dart';
import 'package:stock_market_game/ui/stock/stock_detail_vm.dart';
import 'package:stock_market_game/ui/stock/stock_tag_view.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class StockDetail extends ConsumerWidget {
  String symbol;
  StockDetail({super.key, required this.symbol});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(
        stockDetailVMProvider(StockInformationRequest(symbol: symbol))
            .notifier);
    final state = ref
        .watch(stockDetailVMProvider(StockInformationRequest(symbol: symbol)));
    
    return Scaffold(
      appBar: AppBar(),
      body: state.isInitalLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StockTopBar(companyStockInformation: state.companyInformation, price: state.stockprices.last, priceChange: state.stockprices.last - state.stockprices.first  ),
                  state.barLoading
                      ? Center(child: CircularProgressIndicator())
                      : StockGraph(
                          prices: state.stockprices,
                          callBack: () {
                            notifier.getHistoricalBar();
                          }),
                  
                  CompanyInformation(companyInformation: state.companyInformation)
                ],
              ),
            ),
    );
  }
}

class StockTopBar extends StatelessWidget {
  CompanyStockInformation? companyStockInformation;
  double price, priceChange;
  StockTopBar({
    Key? key,
    this.companyStockInformation,
    required this.price,
    required this.priceChange,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  Dimensions.size14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Dimensions.size8,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(companyStockInformation!.symbol),
          Text(companyStockInformation!.name,style: TextTheme.of(context).headlineMedium,),
          Text(
            price.toString(),
            style: TextTheme.of(context).headlineMedium,
          ),
          Text(
            priceChange.toStringAsFixed(2),
            style: TextTheme.of(context).titleLarge!.copyWith(color:priceChange > 0 ? Colors.green : Colors.red),
          )
        ],
      ),
    );
  }
}

class CompanyInformation extends StatelessWidget {
  CompanyStockInformation? companyInformation;
  CompanyInformation({super.key, required this.companyInformation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.size14 ),
      child: Column(
        spacing: Dimensions.size8,
        children: [
          ListTile(
            title: Text(
              companyInformation!.name,
              style: TextTheme.of(context).titleMedium,
            ),
            subtitle: Text(companyInformation!.symbol),
          ),
          Text(companyInformation!.description),

          
        ],
      ),
    );
  }
}
