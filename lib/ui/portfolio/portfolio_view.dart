import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stock_market_game/ui/core/stock_graph.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class PortfolioView extends ConsumerStatefulWidget {
  const PortfolioView({super.key});

  @override
  ConsumerState<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends ConsumerState<PortfolioView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.size12, vertical: Dimensions.size16),
        child: SingleChildScrollView(
          child: Column(
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
                '\$0',
                style: TextTheme.of(context).titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StockTileView extends StatelessWidget {
  const StockTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
