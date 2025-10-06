import 'package:equatable/equatable.dart';

class NewsArticleEntity extends Equatable {
  final String author;
  final String content;
  final DateTime createdAt;
  final String headline;
  final int id;
  final List<NewsImage> images;
  final String source;
  final String summary;
  final List<String> symbols;
  final DateTime updatedAt;
  final String url;

  const NewsArticleEntity({
    required this.author,
    required this.content,
    required this.createdAt,
    required this.headline,
    required this.id,
    required this.images,
    required this.source,
    required this.summary,
    required this.symbols,
    required this.updatedAt,
    required this.url,
  });

  /// Get the URL of the large image, if available
  String? getLargeImageUrl() {
    return images.firstWhere((img) => img.size == 'large').url;
  }

  /// Get the URL of the thumbnail image, if available
  String? getThumbnailUrl() {
    return images.firstWhere((img) => img.size == 'thumb').url;
  }

  @override
  List<Object?> get props => [
        author,
        content,
        createdAt,
        headline,
        id,
        images,
        source,
        summary,
        symbols,
        updatedAt,
        url,
      ];
}

class NewsImage extends Equatable {
  final String size;
  final String url;

  const NewsImage({
    required this.size,
    required this.url,
  });

  @override
  List<Object?> get props => [size, url];
}