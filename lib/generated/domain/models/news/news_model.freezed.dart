// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/news/news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsFeedModel _$NewsFeedModelFromJson(Map<String, dynamic> json) {
  return _NewsFeedModel.fromJson(json);
}

/// @nodoc
mixin _$NewsFeedModel {
  List<NewsArticle> get news => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_token')
  String get nextPageToken => throw _privateConstructorUsedError;

  /// Serializes this NewsFeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsFeedModelCopyWith<NewsFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFeedModelCopyWith<$Res> {
  factory $NewsFeedModelCopyWith(
          NewsFeedModel value, $Res Function(NewsFeedModel) then) =
      _$NewsFeedModelCopyWithImpl<$Res, NewsFeedModel>;
  @useResult
  $Res call(
      {List<NewsArticle> news,
      @JsonKey(name: 'next_page_token') String nextPageToken});
}

/// @nodoc
class _$NewsFeedModelCopyWithImpl<$Res, $Val extends NewsFeedModel>
    implements $NewsFeedModelCopyWith<$Res> {
  _$NewsFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? nextPageToken = null,
  }) {
    return _then(_value.copyWith(
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsFeedModelImplCopyWith<$Res>
    implements $NewsFeedModelCopyWith<$Res> {
  factory _$$NewsFeedModelImplCopyWith(
          _$NewsFeedModelImpl value, $Res Function(_$NewsFeedModelImpl) then) =
      __$$NewsFeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsArticle> news,
      @JsonKey(name: 'next_page_token') String nextPageToken});
}

/// @nodoc
class __$$NewsFeedModelImplCopyWithImpl<$Res>
    extends _$NewsFeedModelCopyWithImpl<$Res, _$NewsFeedModelImpl>
    implements _$$NewsFeedModelImplCopyWith<$Res> {
  __$$NewsFeedModelImplCopyWithImpl(
      _$NewsFeedModelImpl _value, $Res Function(_$NewsFeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? nextPageToken = null,
  }) {
    return _then(_$NewsFeedModelImpl(
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>,
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsFeedModelImpl implements _NewsFeedModel {
  const _$NewsFeedModelImpl(
      {required final List<NewsArticle> news,
      @JsonKey(name: 'next_page_token') required this.nextPageToken})
      : _news = news;

  factory _$NewsFeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsFeedModelImplFromJson(json);

  final List<NewsArticle> _news;
  @override
  List<NewsArticle> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  @JsonKey(name: 'next_page_token')
  final String nextPageToken;

  @override
  String toString() {
    return 'NewsFeedModel(news: $news, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsFeedModelImpl &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_news), nextPageToken);

  /// Create a copy of NewsFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsFeedModelImplCopyWith<_$NewsFeedModelImpl> get copyWith =>
      __$$NewsFeedModelImplCopyWithImpl<_$NewsFeedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsFeedModelImplToJson(
      this,
    );
  }
}

abstract class _NewsFeedModel implements NewsFeedModel {
  const factory _NewsFeedModel(
      {required final List<NewsArticle> news,
      @JsonKey(name: 'next_page_token')
      required final String nextPageToken}) = _$NewsFeedModelImpl;

  factory _NewsFeedModel.fromJson(Map<String, dynamic> json) =
      _$NewsFeedModelImpl.fromJson;

  @override
  List<NewsArticle> get news;
  @override
  @JsonKey(name: 'next_page_token')
  String get nextPageToken;

  /// Create a copy of NewsFeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsFeedModelImplCopyWith<_$NewsFeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) {
  return _NewsArticle.fromJson(json);
}

/// @nodoc
mixin _$NewsArticle {
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<NewsImage> get images => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  List<String> get symbols => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this NewsArticle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsArticleCopyWith<NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
          NewsArticle value, $Res Function(NewsArticle) then) =
      _$NewsArticleCopyWithImpl<$Res, NewsArticle>;
  @useResult
  $Res call(
      {String author,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String headline,
      int id,
      List<NewsImage> images,
      String source,
      String summary,
      List<String> symbols,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String url});
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res, $Val extends NewsArticle>
    implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? createdAt = null,
    Object? headline = null,
    Object? id = null,
    Object? images = null,
    Object? source = null,
    Object? summary = null,
    Object? symbols = null,
    Object? updatedAt = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<NewsImage>,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      symbols: null == symbols
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsArticleImplCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$$NewsArticleImplCopyWith(
          _$NewsArticleImpl value, $Res Function(_$NewsArticleImpl) then) =
      __$$NewsArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String headline,
      int id,
      List<NewsImage> images,
      String source,
      String summary,
      List<String> symbols,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String url});
}

/// @nodoc
class __$$NewsArticleImplCopyWithImpl<$Res>
    extends _$NewsArticleCopyWithImpl<$Res, _$NewsArticleImpl>
    implements _$$NewsArticleImplCopyWith<$Res> {
  __$$NewsArticleImplCopyWithImpl(
      _$NewsArticleImpl _value, $Res Function(_$NewsArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
    Object? createdAt = null,
    Object? headline = null,
    Object? id = null,
    Object? images = null,
    Object? source = null,
    Object? summary = null,
    Object? symbols = null,
    Object? updatedAt = null,
    Object? url = null,
  }) {
    return _then(_$NewsArticleImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<NewsImage>,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      symbols: null == symbols
          ? _value._symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsArticleImpl implements _NewsArticle {
  const _$NewsArticleImpl(
      {required this.author,
      required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.headline,
      required this.id,
      required final List<NewsImage> images,
      required this.source,
      required this.summary,
      required final List<String> symbols,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.url})
      : _images = images,
        _symbols = symbols;

  factory _$NewsArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsArticleImplFromJson(json);

  @override
  final String author;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final String headline;
  @override
  final int id;
  final List<NewsImage> _images;
  @override
  List<NewsImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String source;
  @override
  final String summary;
  final List<String> _symbols;
  @override
  List<String> get symbols {
    if (_symbols is EqualUnmodifiableListView) return _symbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symbols);
  }

  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final String url;

  @override
  String toString() {
    return 'NewsArticle(author: $author, content: $content, createdAt: $createdAt, headline: $headline, id: $id, images: $images, source: $source, summary: $summary, symbols: $symbols, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticleImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._symbols, _symbols) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      author,
      content,
      createdAt,
      headline,
      id,
      const DeepCollectionEquality().hash(_images),
      source,
      summary,
      const DeepCollectionEquality().hash(_symbols),
      updatedAt,
      url);

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      __$$NewsArticleImplCopyWithImpl<_$NewsArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsArticleImplToJson(
      this,
    );
  }
}

abstract class _NewsArticle implements NewsArticle {
  const factory _NewsArticle(
      {required final String author,
      required final String content,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final String headline,
      required final int id,
      required final List<NewsImage> images,
      required final String source,
      required final String summary,
      required final List<String> symbols,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      required final String url}) = _$NewsArticleImpl;

  factory _NewsArticle.fromJson(Map<String, dynamic> json) =
      _$NewsArticleImpl.fromJson;

  @override
  String get author;
  @override
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  String get headline;
  @override
  int get id;
  @override
  List<NewsImage> get images;
  @override
  String get source;
  @override
  String get summary;
  @override
  List<String> get symbols;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  String get url;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsImage _$NewsImageFromJson(Map<String, dynamic> json) {
  return _NewsImage.fromJson(json);
}

/// @nodoc
mixin _$NewsImage {
  String get size => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this NewsImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsImageCopyWith<NewsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsImageCopyWith<$Res> {
  factory $NewsImageCopyWith(NewsImage value, $Res Function(NewsImage) then) =
      _$NewsImageCopyWithImpl<$Res, NewsImage>;
  @useResult
  $Res call({String size, String url});
}

/// @nodoc
class _$NewsImageCopyWithImpl<$Res, $Val extends NewsImage>
    implements $NewsImageCopyWith<$Res> {
  _$NewsImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsImageImplCopyWith<$Res>
    implements $NewsImageCopyWith<$Res> {
  factory _$$NewsImageImplCopyWith(
          _$NewsImageImpl value, $Res Function(_$NewsImageImpl) then) =
      __$$NewsImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String size, String url});
}

/// @nodoc
class __$$NewsImageImplCopyWithImpl<$Res>
    extends _$NewsImageCopyWithImpl<$Res, _$NewsImageImpl>
    implements _$$NewsImageImplCopyWith<$Res> {
  __$$NewsImageImplCopyWithImpl(
      _$NewsImageImpl _value, $Res Function(_$NewsImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? url = null,
  }) {
    return _then(_$NewsImageImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImageImpl implements _NewsImage {
  const _$NewsImageImpl({required this.size, required this.url});

  factory _$NewsImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImageImplFromJson(json);

  @override
  final String size;
  @override
  final String url;

  @override
  String toString() {
    return 'NewsImage(size: $size, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImageImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, url);

  /// Create a copy of NewsImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImageImplCopyWith<_$NewsImageImpl> get copyWith =>
      __$$NewsImageImplCopyWithImpl<_$NewsImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImageImplToJson(
      this,
    );
  }
}

abstract class _NewsImage implements NewsImage {
  const factory _NewsImage(
      {required final String size,
      required final String url}) = _$NewsImageImpl;

  factory _NewsImage.fromJson(Map<String, dynamic> json) =
      _$NewsImageImpl.fromJson;

  @override
  String get size;
  @override
  String get url;

  /// Create a copy of NewsImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsImageImplCopyWith<_$NewsImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
