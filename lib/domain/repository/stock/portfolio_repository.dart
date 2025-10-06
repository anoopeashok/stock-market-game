

import 'package:stock_market_game/domain/entity/stock/stock_hold_entity.dart';

import '../../../core/resources/result.dart';

abstract class PortfolioRepository {
  Future<Result<void>> buyStock(StockHoldEntity stock);
  Future<Result<List<StockHoldEntity>>> getStocks();
}