import 'package:stock_market_game/core/resources/result.dart';
import 'package:stock_market_game/domain/entity/stock/stock_search_entity.dart';

abstract class StockSearchRepository{
Future<Result<StockSearchEntity>> stockSearch(String keyword);
}