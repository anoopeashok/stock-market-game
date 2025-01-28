// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/news/news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsFeedModelImpl _$$NewsFeedModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsFeedModelImpl(
      news: (json['news'] as List<dynamic>)
          .map((e) => NewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['next_page_token'] as String,
    );

Map<String, dynamic> _$$NewsFeedModelImplToJson(_$NewsFeedModelImpl instance) =>
    <String, dynamic>{
      'news': instance.news,
      'next_page_token': instance.nextPageToken,
    };

_$NewsArticleImpl _$$NewsArticleImplFromJson(Map<String, dynamic> json) =>
    _$NewsArticleImpl(
      author: json['author'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      headline: json['headline'] as String,
      id: (json['id'] as num).toInt(),
      images: (json['images'] as List<dynamic>)
          .map((e) => NewsImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: json['source'] as String,
      summary: json['summary'] as String,
      symbols:
          (json['symbols'] as List<dynamic>).map((e) => e as String).toList(),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NewsArticleImplToJson(_$NewsArticleImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'headline': instance.headline,
      'id': instance.id,
      'images': instance.images,
      'source': instance.source,
      'summary': instance.summary,
      'symbols': instance.symbols,
      'updated_at': instance.updatedAt.toIso8601String(),
      'url': instance.url,
    };

_$NewsImageImpl _$$NewsImageImplFromJson(Map<String, dynamic> json) =>
    _$NewsImageImpl(
      size: json['size'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NewsImageImplToJson(_$NewsImageImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'url': instance.url,
    };
