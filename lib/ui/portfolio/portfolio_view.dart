// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_market_game/ui/core/timeframe_selection_view.dart';
import 'package:stock_market_game/ui/portfolio/stock_tile_view.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/ui/portfolio/portfolio_vm.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class PortfolioView extends ConsumerStatefulWidget {
  const PortfolioView({super.key});

  @override
  ConsumerState<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends ConsumerState<PortfolioView>
    with AutomaticKeepAliveClientMixin {
  TimeFrame timeFrame = TimeFrame.daily;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final state = ref.watch(portfolioVMProvider);
    final notifier = ref.read(portfolioVMProvider.notifier);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => notifier.getUserPorfolio(timeFrame: timeFrame),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size12, vertical: Dimensions.size16),
            child: state.when(
                data: (data) => Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.myPortfolio,
                          style: TextTheme.of(context).headlineLarge,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.investing,
                          style: TextTheme.of(context).titleLarge,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$${data.investedAmount}',
                          style: TextTheme.of(context).titleLarge,
                        ),
                        Row(
                          spacing: Dimensions.size12,
                          children: [
                            data.investedChange > 0
                                ? Icon(
                                    Icons.arrow_upward,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.arrow_downward,
                                    color: Colors.red,
                                  ),
                            Text('${data.investedChange}',style: TextStyle(fontSize: 16),),
                            Text('(${data.investedChangePercentage}%)',
                                style: TextStyle(fontSize: 16))
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.size28,
                        ),
                        AspectRatio(
                          aspectRatio: 2,
                          child: SfSparkLineChart(
                            color: Theme.of(context).primaryColor,
                            axisLineColor: Colors.transparent,
                            data: data.stockPrices,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.size28,
                        ),
                        Center(child: TimeframeSelectionView(selectedTimeFrame:(timeFrame)=> notifier.getUserPorfolio(timeFrame: timeFrame))),
                       SizedBox(
                          height: Dimensions.size28,
                        ),

                        Text(
                          AppLocalizations.of(context)!.myStocks,
                          style: TextTheme.of(context).titleMedium,
                        ),
                        for (int i = 0; i < data.items.length; i++)
                          StockTileView(portfolioItem: data.items[i])
                      ],
                    ),
                error: (error, st) => Container(
                      child: Text(error.toString()),
                    ),
                loading: () => Center(
                      child: CircularProgressIndicator(),
                    )),
          ),
        ),
      ),
    );
  }
}
