import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/economic_indicators/cpi_model.dart';
import 'package:stock_market_game/domain/models/economic_indicators/gdp_model.dart';

import '../../../domain/models/economic_indicators/interest_rate.dart';
import '../../../domain/models/economic_indicators/retail_sales_model.dart';
import '../../../domain/models/economic_indicators/unemployment_rate.dart';
import '../../../utils/result.dart';

part '../../../generated/data/repository/economy/economy_indicators_repository.g.dart';

@riverpod
EconomyIndicatorsRepository economyIndicatorsRepository(Ref ref) =>
    EconomyIndicatorsRepository(
        repositoryHelper: ref.read(repositoryHelperProvider(apiConfigName: APIConfigName.alphavantage)));

class EconomyIndicatorsRepository {
  final RepositoryHelper _repositoryHelper;
  EconomyIndicatorsRepository({required RepositoryHelper repositoryHelper})
      : _repositoryHelper = repositoryHelper;

  Future<Result<GdpModel>> getGDPPerCapita() async {
    String endpoint = "&function=REAL_GDP_PER_CAPITA";
    return _repositoryHelper.fetchData(
        endpoint: endpoint, fromJson: (json) => GdpModel.fromJson(json));
  }

  Future<Result<CPIModel>> getCPI() async {
    String endpoint = "&function=CPI&interval=monthly";
    return _repositoryHelper.fetchData(
        endpoint: endpoint, fromJson: (json) => CPIModel.fromJson(json));
  }

  Future<Result<FederalFundsRateModel>> getInterestRate() async {
    String endpoint = "&function=FEDERAL_FUNDS_RATE&interval=weekly";
    return _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => FederalFundsRateModel.fromJson(json));
  }

  Future<Result<RetailSalesModel>> getRetailSalesRate() async {
    String endpoint = "&function=RETAIL_SALES";
    return _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => RetailSalesModel.fromJson(json));
  }

  Future<Result<UnemploymentRateModel>> getUnemployementRate() async {
    String endpoint = "&function=UNEMPLOYMENT";
    return _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => UnemploymentRateModel.fromJson(json));
  }
}
