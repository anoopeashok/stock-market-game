
// news_feed.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
part '../../../generated/domain/models/news/news_model.freezed.dart';
part '../../../generated/domain/models/news/news_model.g.dart';


@freezed
class NewsFeedModel with _$NewsFeedModel {
  const factory NewsFeedModel({
    required List<NewsArticle> news,
    @JsonKey(name: 'next_page_token') required String nextPageToken,
  }) = _NewsFeedModel;

  factory NewsFeedModel.fromJson(Map<String, dynamic> json) =>
      _$NewsFeedModelFromJson(json);
}

@freezed
class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    required String author,
    required String content,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required String headline,
    required int id,
    required List<NewsImage> images,
    required String source,
    required String summary,
    required List<String> symbols,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required String url,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleFromJson(json);
}

@freezed
class NewsImage with _$NewsImage {
  const factory NewsImage({
    required String size,
    required String url,
  }) = _NewsImage;

  factory NewsImage.fromJson(Map<String, dynamic> json) =>
      _$NewsImageFromJson(json);
}


extension NewsArticleExtension on NewsArticle {
  String? getLargeImageUrl() {
    return images.firstWhereOrNull((img) => img.size == 'large')?.url;
  }

  String? getThumbnailUrl() {
    return images.firstWhereOrNull((img) => img.size == 'thumb')?.url;
  }
}
