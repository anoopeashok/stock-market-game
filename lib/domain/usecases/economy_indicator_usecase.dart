import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/economy/economy_indicators_repository.dart';
import 'package:stock_market_game/utils/result.dart';

import '../entity/econnomy_information.dart';

part '../../generated/domain/usecases/economy_indicator_usecase.g.dart';

@riverpod
EconomyIndicatorUsecase economyIndicatorUsecase(Ref ref) =>
    EconomyIndicatorUsecase(economyIndicatorsRepository: ref.read(economyIndicatorsRepositoryProvider));

class EconomyIndicatorUsecase {
  EconomyIndicatorUsecase(
      {required EconomyIndicatorsRepository economyIndicatorsRepository})
      : _economyIndicatorsRepository = economyIndicatorsRepository;
  final EconomyIndicatorsRepository _economyIndicatorsRepository;

  Future<Result<EconomyInformationEntity>> getEconomyInfo() async {
    final gdpResult = await _economyIndicatorsRepository.getGDPPerCapita();
    switch (gdpResult) {
      case Error():
        return Result.error(gdpResult.error);
      case Ok():
    }
    final cpiResult = await _economyIndicatorsRepository.getCPI();
    switch (cpiResult) {
      case Error():
        return Result.error(cpiResult.error);
      case Ok():
    }
    final interestRateResult =
        await _economyIndicatorsRepository.getInterestRate();
    switch (interestRateResult) {
      case Error():
        return Result.error(interestRateResult.error);
      case Ok():
    }

    final rsRateResult =
        await _economyIndicatorsRepository.getRetailSalesRate();
    switch (rsRateResult) {
      case Error():
        return Result.error(rsRateResult.error);
      case Ok():
    }

    final unemploymentRateResult =
        await _economyIndicatorsRepository.getUnemployementRate();
    switch (unemploymentRateResult) {
      case Error():
        return Result.error(unemploymentRateResult.error);
      case Ok():
    }

    return Result.ok(EconomyInformationEntity(
        gdpModel: gdpResult.value,
        retailSalesModel: rsRateResult.value,
        cpiModel: cpiResult.value,
        unemploymentRateModel: unemploymentRateResult.value,
        federalFundsRateModel: interestRateResult.value));
  }
}
