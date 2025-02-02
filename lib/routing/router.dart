

import 'package:go_router/go_router.dart';
import 'package:stock_market_game/domain/entity/company_full_data.dart';
import 'package:stock_market_game/ui/home/home_view.dart';
import 'package:stock_market_game/ui/stock/stock_detail.dart';
import 'package:stock_market_game/ui/trade%20stocks/buy_stock_view.dart';

enum AppRoutes{
  home,
  stockdetail,
  buystocks
}

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => HomeView(),
      routes: [
        GoRoute(
          path: '/stockdetails',
          name: AppRoutes.stockdetail.name,
          builder: (context,state)=>StockDetail(symbol: state.extra as String,),
          routes: [
            GoRoute(path: '/buystocks',
            name: AppRoutes.buystocks.name,
            builder: (context,state)=> BuyStockView(fullData: state.extra as CompanyFullData )
            )
          ]
          )
      ]
    ),
  ],
);
