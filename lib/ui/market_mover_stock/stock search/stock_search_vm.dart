import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/stock/stock_search_repository.dart';
import 'package:stock_market_game/domain/models/stock/stock_search_model.dart';

import '../../../utils/result.dart';
part '../../../generated/ui/market_mover_stock/stock search/stock_search_vm.g.dart';

@riverpod
class StockSearchVM extends _$StockSearchVM {
  late StockSearchRepository _stockSearchRepository;

  @override
  Future<List<BestMatch>> build() async {
    _stockSearchRepository = ref.read(stockSearchRepositoryProvider);
    return [];
  }

  Future<List<BestMatch>> searchStock(String keyword) async {
    final result = await _stockSearchRepository.stockSearch(keyword);
    switch (result) {
      case Ok():
        return result.value.bestMatches;
      case Error():
        throw result.error;
    }
  }
}
