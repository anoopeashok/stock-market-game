
import 'package:stock_market_game/core/resources/result.dart';
import 'package:stock_market_game/domain/entity/market/top_movers_entity.dart';
import 'package:stock_market_game/domain/entity/stock/active_stock_entity.dart';

abstract class StockMarketPerformanceRepository {
  Future<Result<List<ActiveStockEntity>>> getActiveStocks();
  Future<Result<List<TopMoversEntity>>> getTopGainersAndlosers();
}