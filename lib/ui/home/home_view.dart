import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stock_market_game/ui/core/custom_tabs.dart';
import 'package:stock_market_game/ui/economy/economy_view.dart';
import 'package:stock_market_game/ui/market_mover_stock/market_mover_stock.dart';
import 'package:stock_market_game/ui/news/news_view.dart';
import 'package:stock_market_game/ui/portfolio/portfolio_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController();
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        bottom: TextTabBar(
          pageController: _pageController,
          tabs: [
            AppLocalizations.of(context)!.portfolio,
            AppLocalizations.of(context)!.topStocks,
            AppLocalizations.of(context)!.economy,
            AppLocalizations.of(context)!.news,
          ],
        ),
      ),
      body: PageStorage(
        bucket: _bucket,
        child: PageView(
          controller: _pageController,
          children: [
            PortfolioView(
              key: PageStorageKey('portfolio'),
            ),
            MarketMoverStock(
              key: PageStorageKey('markettop'),
            ),
            EconomyView(),
            NewsView(
              key: PageStorageKey('news'),
            )
          ],
        ),
      ),
    );
  }
}
