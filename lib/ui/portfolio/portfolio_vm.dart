import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/domain/entity/portfolio_data.dart';
import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/domain/usecases/user_stock_history.dart';

import '../../utils/result.dart';
part '../../generated/ui/portfolio/portfolio_vm.g.dart';

@riverpod
class PortfolioVM extends _$PortfolioVM {
  late UserStockHistoryUsecase usecase;
  @override
  Future<PortfolioData> build() async {
    usecase = ref.read(userStockHistoryUsecaseProvider);
    return getUserPorfolio(timeFrame: TimeFrame.daily);
  }

  Future<PortfolioData> getUserPorfolio({required TimeFrame timeFrame}) async {
    final result = await usecase.getUserPortfolio(timeFrame);
    switch (result) {
      case Ok():
        return result.value;
      case Error():
        return PortfolioData.emptyObject();
    }
  }
}
