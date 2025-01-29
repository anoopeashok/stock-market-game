import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/domain/models/performance/top_movers_stocks_model.dart';
import 'package:stock_market_game/domain/models/stock/historical_bar.dart';
import 'package:stock_market_game/domain/models/stock/latest_bar.dart';
import 'package:stock_market_game/domain/models/stock/stock_data_model.dart';
import 'package:stock_market_game/utils/result.dart';

import '../../../domain/models/performance/active_stock_list_model.dart';

part '../../../generated/data/repository/stock/stock_repository.g.dart';

@riverpod
StockRepository stockRepository(Ref ref) => StockRepository(
    repositoryHelper: ref
        .watch(repositoryHelperProvider(apiConfigName: APIConfigName.alpaca)));

enum TopGainerorLoserParameter { stocks, crypto }

class StockRepository {
  final RepositoryHelper _repositoryHelper;

  StockRepository({required RepositoryHelper repositoryHelper})
      : _repositoryHelper = repositoryHelper;

  Future<Result<ActiveStockListModel>> getActiveStocks() async {
    String endpoint = "/v1beta1/screener/stocks/most-actives?by=trades&top=5";
    return await _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => ActiveStockListModel.fromJson(json));
  }

  Future<Result<TopMarketMoversModel>> getTopGainersAndlosers(
      TopGainerorLoserParameter parameter) async {
    String endpoint = "/v1beta1/screener/${parameter.name}/movers?top=5";
    return await _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => TopMarketMoversModel.fromJson(json));
  }

  Future<Result<StockData>> getStockData(List<String> symbols) async {
    String parsedCompanyName = '';
    for (var name in symbols) {
      parsedCompanyName = '$parsedCompanyName$name%2C';
    }
    String endpoint = "/v2/stocks/snapshots?symbols=$parsedCompanyName";
    return await _repositoryHelper.fetchData(
        endpoint: endpoint, fromJson: (json) => StockData.fromJson(json));
  }

  Future<Result<HistoricalBarDataModel>> getHistoricalBarData(
      StockInformationRequest request) async {
    String endpoint =
        "/v2/stocks/bars?symbols=${request.symbol}&timeframe=${request.timeFrame}&start=${request.startDate}&end=${request.endDate}&limit=1000&adjustment=raw&feed=iex&sort=asc";
    return await _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => HistoricalBarDataModel.fromJson(json));
  }

    Future<Result<LatestBarDataModel>> getLatestBarData(
      String symbol) async {
    String endpoint =
        "/v2/stocks/bars/latest?symbols=$symbol";
    return await _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => LatestBarDataModel.fromJson(json));
  }


}
