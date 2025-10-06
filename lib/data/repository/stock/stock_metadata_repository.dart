import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/config/api_config.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';

import '../../models/stock/condition_codes_model.dart';
import '../../models/stock/exchange_codes_model.dart';
import '../../../core/resources/result.dart';

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
