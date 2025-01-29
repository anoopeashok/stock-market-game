// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:stock_market_game/domain/entity/popular_stock.dart';
import 'package:stock_market_game/domain/entity/top_market_movers_entity.dart';
import 'package:stock_market_game/domain/models/performance/active_stock_list_model.dart';
import 'package:stock_market_game/routing/router.dart';
import 'package:stock_market_game/ui/market_mover_stock/market_mover_stock_vm.dart';
import 'package:stock_market_game/ui/stock/stock_tag_view.dart';
import 'package:stock_market_game/utils/dimensions.dart';

import '../../domain/models/performance/top_movers_stocks_model.dart';

class MarketMoverStock extends ConsumerStatefulWidget {
  const MarketMoverStock({super.key});

  @override
  ConsumerState<MarketMoverStock> createState() => _MarketMoverStockState();
}

class _MarketMoverStockState extends ConsumerState<MarketMoverStock>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final marketMover = ref.watch(topMarketMoverStockProvider);
    final activeStocks = ref.watch(getActiveStocksProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.size14, top: Dimensions.size14),
              child: Text(
                AppLocalizations.of(context)!.topMarketMovers,
                style: TextTheme.of(context).headlineLarge,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            activeStocks.when(
                data: (data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Dimensions.size14),
                          child: Text(
                            "Popular Stocks",
                            style: TextTheme.of(context).titleMedium,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        StockInfoTable(popularStockList: data),
                      ],
                    ),
                error: (error, st) => ErrorWidget(error),
                loading: () => Center(
                      child: CircularProgressIndicator(),
                    )),
            SizedBox(
              height: 20,
            ),
            marketMover.when(
                data: (data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Dimensions.size14),
                          child: Text(
                            "Top Gainers",
                            style: TextTheme.of(context).titleMedium,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GainerLoserInfoTable(
                            topMarketMoversEntityItem: data.gainers),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Dimensions.size14),
                          child: Text("Top Losers"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GainerLoserInfoTable(
                            topMarketMoversEntityItem: data.losers),
                      ],
                    ),
                error: (error, st) => ErrorWidget(error),
                loading: () => Center(child: CircularProgressIndicator())),
          ],
        ),
      ),
    );
  }
}

class StockInfoTable extends StatelessWidget {
  final List<PopularStock> popularStockList;
  const StockInfoTable({
    super.key,
    required this.popularStockList,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(Dimensions.size14),
          color: Theme.of(context).colorScheme.secondaryContainer,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Stock",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "Trade count",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Change",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        for (int i = 0; i < popularStockList.length; i++)
          InkWell(
            onTap: ()=> context.goNamed(AppRoutes.stockdetail.name,extra: popularStockList[i].symbol),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.size14, vertical: Dimensions.size12),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: StockTagView(company: popularStockList[i].company)),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${popularStockList[i].tradeCount}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${popularStockList[i].priceChangePercentage}',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: popularStockList[i].priceChangePercentage > 0
                              ? Colors.green
                              : Colors.red),
                    ),
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}

class TopStockInfoTable extends StatelessWidget {
  final List<PopularStock> popularStockList;

  const TopStockInfoTable({
    super.key,
    required this.popularStockList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(Dimensions.size14),
          color: Theme.of(context).colorScheme.secondaryContainer,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Stock",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "Trade count",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Change",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        for (int i = 0; i < popularStockList.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size14, vertical: Dimensions.size12),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: StockTagView(company: popularStockList[i].company)),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${popularStockList[i].tradeCount}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${popularStockList[i].priceChangePercentage}',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: popularStockList[i].priceChangePercentage > 0
                            ? Colors.green
                            : Colors.red),
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

class GainerLoserInfoTable extends StatelessWidget {
  final List<TopMarketMoversEntityItem> topMarketMoversEntityItem;

  const GainerLoserInfoTable({
    super.key,
    required this.topMarketMoversEntityItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(Dimensions.size14),
          color: Theme.of(context).colorScheme.secondaryContainer,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Stock",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "price",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Change",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        for (int i = 0; i < topMarketMoversEntityItem.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size14, vertical: Dimensions.size12),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: StockTagView(
                        company: topMarketMoversEntityItem[i].company)),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${topMarketMoversEntityItem[i].topMarketMoversModel.price}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${topMarketMoversEntityItem[i].topMarketMoversModel.percentagechange}',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: topMarketMoversEntityItem[i]
                                    .topMarketMoversModel
                                    .change >
                                0
                            ? Colors.green
                            : Colors.red),
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

class TopStockTable extends StatelessWidget {
  TopStockTable({super.key, required this.topStockList});
  List<TopMarketMoverItemModel> topStockList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Dimensions.size14),
      decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).colorScheme.primaryContainer),
          borderRadius: BorderRadius.circular(Dimensions.roundedRadius16)),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(1), // Wider for the first column
          1: FlexColumnWidth(2),
          2: FlexColumnWidth(1),
        },
        children: [
          // Table Header Row
          TableRow(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer),
            children: const [
              Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.size14,
                    left: Dimensions.size14,
                    bottom: Dimensions.size14),
                child: Text(
                  "Stock",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.size14,
                  top: Dimensions.size14,
                ),
                child: Text(
                  "% Change",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.size14, right: Dimensions.size14),
                child: Text(
                  "Price",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          // Data Rows
          for (int i = 0; i < topStockList.length; i++)
            TableRow(decoration: BoxDecoration(), children: [
              Padding(
                padding: const EdgeInsets.only(left: Dimensions.size14, top: 8),
                child: Text(
                  topStockList[i].symbol,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: Text(
                  '${topStockList[i].change}',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: topStockList[i].change > 0
                          ? Colors.green
                          : Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8),
                child: Text(
                  '${topStockList[i].price}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ])
        ],
      ),
    );
  }
}
