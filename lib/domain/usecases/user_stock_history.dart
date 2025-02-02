import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/data/repository/stock/trade_stock_repository.dart';
import 'package:stock_market_game/domain/entity/portfolio_data.dart';
import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/utils/result.dart';

part '../../generated/domain/usecases/user_stock_history.g.dart';

@riverpod
UserStockHistoryUsecase userStockHistoryUsecase(Ref ref) =>
    UserStockHistoryUsecase(
        stockRepository: ref.read(stockRepositoryProvider),
        tradeStockRepository: ref.read(tradeStockRepositoryProvider));

class UserStockHistoryUsecase {
  final StockRepository _stockRepository;
  final TradeStockRepository _tradeStockRepository;

  UserStockHistoryUsecase(
      {required StockRepository stockRepository,
      required TradeStockRepository tradeStockRepository})
      : _stockRepository = stockRepository,
        _tradeStockRepository = tradeStockRepository;

  List<double> _sumByAxis(List<List<double>> lists) {
    // Find the maximum length among all lists
    int maxLength =
        lists.map((list) => list.length).reduce((a, b) => a > b ? a : b);

    return List.generate(maxLength, (index) {
      return lists.fold(
          0, (sum, list) => sum + (index < list.length ? list[index] : 0));
    });
  }

  Future<Result<PortfolioData>> getUserPortfolio(TimeFrame timeFrame) async {
    final trades = await _tradeStockRepository.getStocks();
    switch (trades) {
      case Error():
        return Result.error(trades.error);
      case Ok():
    }
    List<String> stockSymbols =
        List<String>.from(trades.value.map((item) => item.symbol));

    final stocks = await _stockRepository.getMultitHistoricalBarData(
        StockInformationRequest(symbols: stockSymbols, timeFrame: timeFrame));
    switch (stocks) {
      case Error():
        return Result.error(stocks.error);
      case Ok():
        List<List<double>> prices = [];
        double totalInvestment = 0;
        double investmentCurrentvalue = 0;
        double investmentChange = 0;
        double investmentChangePercentage = 0;
        List<PortfolioItem> portfolioItem =
            List<PortfolioItem>.from(stocks.value.historicalData.map((item) {
          final trade = trades.value.firstWhere((t) => t.symbol == item.symbol);
          totalInvestment += trade.totalPrice;
          investmentCurrentvalue += trade.numberOfShares * item.bars.last.high;
          double priceChange = double.parse(
              (trade.price * trade.numberOfShares -
                      item.bars.last.high * trade.numberOfShares)
                  .toStringAsFixed(2));
          double priceChangePerchange = double.parse(
              ((priceChange / trade.price) * 100).toStringAsFixed(2));
          prices.add(item.bars.map((item) => item.high).toList());
          investmentChange += priceChange;
          investmentChangePercentage += priceChangePerchange;
          return PortfolioItem(
              currentPrice: item.bars.last.high,
              priceChange: priceChange,
              priceChangePercentage: priceChangePerchange,
              symbol: trade.symbol,
              image: trade.image,
              name: trade.name);
        }));

        return Result.ok(PortfolioData(
            stockPrices: _sumByAxis(prices),
            initialInvestment: totalInvestment,
            investedAmount: investmentCurrentvalue,
            investedChange: investmentChange,
            investedChangePercentage: investmentChangePercentage,
            items: portfolioItem));
    }
  }
}
