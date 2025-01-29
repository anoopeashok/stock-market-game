import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/domain/entity/popular_stock.dart';
import 'package:stock_market_game/domain/entity/top_market_movers_entity.dart';
import 'package:stock_market_game/domain/usecases/popular_stocks_usecase.dart';
import 'package:stock_market_game/domain/usecases/top_market_mover_usecase.dart';
import 'package:stock_market_game/utils/result.dart';

part '../../generated/ui/market_mover_stock/market_mover_stock_vm.g.dart';

@riverpod
Future<TopMarketMoversEntity> topMarketMoverStock(Ref ref) async {
  final topMarketMoverUsecase = ref.read(topMarketMoverUsecaseProvider);
  var result = await topMarketMoverUsecase
      .getGainersandLosers();
  switch (result) {
    case Ok<TopMarketMoversEntity>():
      return result.value;
    case Error<TopMarketMoversEntity>():
      throw Exception(result.error);
  }
}

@riverpod
Future<List<PopularStock>> getActiveStocks(Ref ref) async {
  final marketMoversRepository = ref.read(popularStocksUsecaseProvider);
  var result = await marketMoversRepository
      .getPopularStocks();
  switch (result) {
    case Ok<List<PopularStock>>():
      return result.value;
    case Error<List<PopularStock>>():
      throw Exception(result.error);
  }
}

