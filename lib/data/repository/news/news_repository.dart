import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/news/news_model.dart';

import '../../../utils/result.dart';
part '../../../generated/data/repository/news/news_repository.g.dart';
@riverpod
NewsRepository newsRepository(Ref ref) => NewsRepository(
    repositoryHelper: ref
        .read(repositoryHelperProvider(apiConfigName: APIConfigName.alpaca)));

class NewsRepository {
  NewsRepository({required RepositoryHelper repositoryHelper})
      : _repositoryHelper = repositoryHelper;
  final RepositoryHelper _repositoryHelper;

  Future<Result<NewsFeedModel>> getNewsArticle({String? nextPageToken = ''}) async {
    final endpoint =
        '/v1beta1/news?sort=desc&page_token=$nextPageToken';
    final result = await _repositoryHelper.fetchData(
        endpoint: endpoint, fromJson: (json) => NewsFeedModel.fromJson(json));
    switch (result) {
      case Ok<NewsFeedModel>():
        nextPageToken = result.value.nextPageToken;
        return Result.ok(result.value);
      case Error<NewsFeedModel>():
        return Result.error(result.error);
    }
  }
}
