import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/domain/entity/econnomy_information.dart';
import 'package:stock_market_game/utils/result.dart';

import '../../domain/usecases/economy_indicator_usecase.dart';

part '../../generated/ui/economy/economy_vm.g.dart';

@riverpod
Future<EconomyInformationEntity> getEconomyInformation(Ref ref) async {
  final economyIndicatorUsecase = ref.read(economyIndicatorUsecaseProvider);
  final result = await economyIndicatorUsecase.getEconomyInfo();
  switch (result) {
    case Error<EconomyInformationEntity>():
      throw result.error;
    case Ok():
      return result.value;
  }
}
