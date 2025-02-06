import 'package:stock_market_game/domain/entity/portfolio_data.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/domain/models/performance/active_stock_list_model.dart';
import 'package:stock_market_game/domain/models/stock/stock_data_model.dart';

class PopularStock {
  StockInfo stockInfo;
  Company company;
  ActiveStockItem activeStockItem;

  PopularStock({required this.stockInfo, required this.company,required this.activeStockItem});

  String get symbol => stockInfo.name;

  String get companyName => company.name;

  String get image => company.image;

  double get priceChangePercentage =>
      double.parse(((stockInfo.dailyBar.close - stockInfo.dailyBar.open) / 100)
          .toStringAsFixed(2));
  
  int get tradeCount => activeStockItem.tradeCount;
}
