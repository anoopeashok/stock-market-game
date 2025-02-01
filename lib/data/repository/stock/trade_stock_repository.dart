import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/services/local%20storage/local_storage.dart';
import 'package:stock_market_game/data/services/local%20storage/local_storage_client.dart';
import 'package:stock_market_game/domain/models/stock/stock_hold_model.dart';
import 'package:stock_market_game/utils/app_exceptions.dart';
import 'package:stock_market_game/utils/result.dart';
part '../../../generated/data/repository/stock/trade_stock_repository.g.dart';
@riverpod
TradeStockRepository tradeStockRepository(Ref ref) =>
    TradeStockRepository(localStorage: ref.read(localStorageProvider));

class TradeStockRepository {
  final LocalStorage _localStorage;
  final String _holdStocks = 'hold-stocks';

  TradeStockRepository({required LocalStorage localStorage})
      : _localStorage = localStorage;
  Future<Result<void>> buyStock(StockHold stock) async {
    final result = await _localStorage.get(_holdStocks);
    switch (result) {
      case Ok():
        final newList = [...result.value, stock];
        await _localStorage.create(_holdStocks, newList);
        return Result.ok(null);
      case Error<NotFoundError>():
        await _localStorage.create(_holdStocks, [stock]);
        return Result.ok(null);
      case Error():
        return Result.error(result.error);
    }
  }

  Future<Result<List<StockHold>>> getStocks() async {
    final result = await _localStorage.get(_holdStocks);
    switch (result) {
      case Ok():
        return Result.ok(List<StockHold>.from(
            result.value.map((item) => StockHold.fromJson(item))));
      case Error():
        return Result.error(result.error);
    }
  }
}
