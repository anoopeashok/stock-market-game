// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:stock_market_game/ui/market_mover_stock/gainer_loser_info_table.dart';
import 'package:stock_market_game/ui/market_mover_stock/market_mover_stock_vm.dart';
import 'package:stock_market_game/ui/market_mover_stock/stock%20search/stock_search_bar.dart';
import 'package:stock_market_game/ui/market_mover_stock/stock_info_table.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.size14),
              child: StockSearchbar(),
            ),
            SizedBox(height: 20,),
            activeStocks.when(
                data: (data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Dimensions.size14),
                          child: Text(
                            AppLocalizations.of(context)!.popularStocks,
                            style: TextTheme.of(context).titleMedium!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: Dimensions.size14),
                          child: PopularStockView(popularStockList: data),
                        )
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
                            AppLocalizations.of(context)!.topGainers,
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
                          child: Text(AppLocalizations.of(context)!.topLosers),
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
