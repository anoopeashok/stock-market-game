import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/stock/trade_stock_repository.dart';
import 'package:stock_market_game/domain/models/stock/stock_hold_model.dart';
import 'package:stock_market_game/ui/trade%20stocks/buy_stock_state.dart';

import '../../utils/result.dart';
part '../../generated/ui/trade stocks/buy_stock_vm.g.dart';

@riverpod
class BuyStockVM extends _$BuyStockVM {
  late TradeStockRepository _tradeStockRepository;
  @override
  BuyStockState build() {
    _tradeStockRepository = ref.read(tradeStockRepositoryProvider);
    return BuyStockState();
  }

  Future<void> buyStock(StockHold stockHold) async {
    state = BuyStockState(isLoading: true);
    final result = await _tradeStockRepository.buyStock(stockHold);
    switch (result) {
      case Ok():
        state = BuyStockState(isLoading: false);
      case Error():
        state = BuyStockState(isError: true, error: result.error.toString());
    }
  }
}
