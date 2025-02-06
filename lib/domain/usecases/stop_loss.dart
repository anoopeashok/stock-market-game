import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/data/services/local%20storage/local_storage.dart';

class StopLossUsecase {
  final StockRepository _stockRepository;
  final LocalStorage _localStorage;
  StopLossUsecase({required StockRepository stockRepository, required LocalStorage localStorage})
      : _stockRepository = stockRepository,_localStorage = localStorage;

  // Future<Result<UserTradeInfo>> getStopLossInformation(List<String> symbols) async {
  //   final stockResult = await _stockRepository.getStockData(symbols);
  //   switch (stockResult) {
  //     case Ok():
        
  //     case Error():
  //   }
  // }
}
