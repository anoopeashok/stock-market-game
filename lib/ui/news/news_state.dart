

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market_game/domain/models/news/news_model.dart';

part '../../generated/ui/news/news_state.freezed.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState({
    @Default(<NewsArticle>[])List<NewsArticle> news,
    @Default(true) bool  isInitialLoad,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool isLoadMoreDone,
    String? error,
  }) = _NewsState;

  const NewsState._();
}
