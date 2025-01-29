import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/stock/stock_search_model.dart';

import '../../../utils/result.dart';

part '../../../generated/data/repository/stock/stock_search_repository.g.dart';

@riverpod
StockSearchRepository stockSearchRepository(Ref ref) =>
    StockSearchRepository(repositoryHelper: ref.read(repositoryHelperProvider(apiConfigName: APIConfigName.alphavantage)));

class StockSearchRepository {
  final RepositoryHelper _repositoryHelper;
  StockSearchRepository({required RepositoryHelper repositoryHelper})
      : _repositoryHelper = repositoryHelper;

  Future<Result<BestMatchesResponse>> stockSearch(String keyword) async {
    String endpoint = '&function=SYMBOL_SEARCH&keywords=$keyword';
    return await _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => BestMatchesResponse.fromJson(json));
  }
}
