import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';

import '../../../domain/models/stock/condition_codes_model.dart';
import '../../../domain/models/stock/exchange_codes_model.dart';
import '../../../utils/result.dart';

part '../../../generated/data/repository/stock/stock_metadata_repository.g.dart';

@riverpod
StockMetaDataRepository stockMetaDataRepositoryImpl(Ref ref) =>
    StockMetaDataRepository(repositoryhelper: ref.watch(repositoryHelperProvider(apiConfigName: APIConfigName.alphavantage)));

class StockMetaDataRepository {
  final RepositoryHelper _repositoryHelper;

  StockMetaDataRepository({required RepositoryHelper repositoryhelper})
      : _repositoryHelper = repositoryhelper;

  Future<Result<TradeConditionsModel>> getConditionCode() async {
    String endpoint = '';
    return await _repositoryHelper.fetchDataWithCache(
        endpoint: endpoint,
        fromJson: (json) => TradeConditionsModel.fromJson(json));
  }

  Future<Result<ExchangeCodesModel>> getExchangeCode() async {
    String endpoint = '';
    return await _repositoryHelper.fetchDataWithCache(
        endpoint: endpoint,
        fromJson: (json) => ExchangeCodesModel.fromJson(json));
  }
}
