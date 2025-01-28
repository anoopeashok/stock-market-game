import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/news/news_repository.dart';
import 'package:stock_market_game/domain/models/news/news_model.dart';
import 'package:stock_market_game/ui/news/news_state.dart';

import '../../utils/result.dart';
part '../../generated/ui/news/news_vm.g.dart';

@riverpod
class NewsViewNotifier extends _$NewsViewNotifier {
  String? nextToken;
  late NewsRepository _newsRepository;

  @override
  NewsState build() {
    _newsRepository = ref.read(newsRepositoryProvider);
      getNewsArticles();
    return NewsState();
  }

  void getNewsArticles() async {
    final result = await _newsRepository.getNewsArticle();
    switch (result) {
      case Ok<NewsFeedModel>():
        nextToken = result.value.nextPageToken;
        state = state.copyWith(
            isInitialLoad: false,
            news: [...state.news, ...result.value.news],
            isLoadMoreDone: nextToken == null);
      case Error<NewsFeedModel>():
        state = state.copyWith(
            error: result.error.toString(),
            isError: true,
            isLoadMoreDone: true);
    }
  }

  void loadMoreNewsArticle() async {
    state = state.copyWith(isLoading: true);
    final result = await _newsRepository.getNewsArticle();
    switch (result) {
      case Ok<NewsFeedModel>():
        nextToken = result.value.nextPageToken;
        state = state.copyWith(
            isLoading: false,
            news: [...state.news, ...result.value.news],
            isLoadMoreDone: nextToken == null);
      case Error<NewsFeedModel>():
        state = state.copyWith(
            error: result.error.toString(),
            isError: true,
            isLoadMoreDone: true);
    }
  }
}
