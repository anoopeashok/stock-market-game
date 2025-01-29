// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/stock/stock_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BestMatch _$BestMatchFromJson(Map<String, dynamic> json) {
  return _BestMatch.fromJson(json);
}

/// @nodoc
mixin _$BestMatch {
  @JsonKey(name: '1. symbol')
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: '2. name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: '4. region')
  String get region => throw _privateConstructorUsedError;

  /// Serializes this BestMatch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BestMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BestMatchCopyWith<BestMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestMatchCopyWith<$Res> {
  factory $BestMatchCopyWith(BestMatch value, $Res Function(BestMatch) then) =
      _$BestMatchCopyWithImpl<$Res, BestMatch>;
  @useResult
  $Res call(
      {@JsonKey(name: '1. symbol') String symbol,
      @JsonKey(name: '2. name') String name,
      @JsonKey(name: '4. region') String region});
}

/// @nodoc
class _$BestMatchCopyWithImpl<$Res, $Val extends BestMatch>
    implements $BestMatchCopyWith<$Res> {
  _$BestMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BestMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? region = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestMatchImplCopyWith<$Res>
    implements $BestMatchCopyWith<$Res> {
  factory _$$BestMatchImplCopyWith(
          _$BestMatchImpl value, $Res Function(_$BestMatchImpl) then) =
      __$$BestMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '1. symbol') String symbol,
      @JsonKey(name: '2. name') String name,
      @JsonKey(name: '4. region') String region});
}

/// @nodoc
class __$$BestMatchImplCopyWithImpl<$Res>
    extends _$BestMatchCopyWithImpl<$Res, _$BestMatchImpl>
    implements _$$BestMatchImplCopyWith<$Res> {
  __$$BestMatchImplCopyWithImpl(
      _$BestMatchImpl _value, $Res Function(_$BestMatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of BestMatch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? region = null,
  }) {
    return _then(_$BestMatchImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestMatchImpl implements _BestMatch {
  _$BestMatchImpl(
      {@JsonKey(name: '1. symbol') required this.symbol,
      @JsonKey(name: '2. name') required this.name,
      @JsonKey(name: '4. region') required this.region});

  factory _$BestMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestMatchImplFromJson(json);

  @override
  @JsonKey(name: '1. symbol')
  final String symbol;
  @override
  @JsonKey(name: '2. name')
  final String name;
  @override
  @JsonKey(name: '4. region')
  final String region;

  @override
  String toString() {
    return 'BestMatch(symbol: $symbol, name: $name, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestMatchImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, region);

  /// Create a copy of BestMatch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BestMatchImplCopyWith<_$BestMatchImpl> get copyWith =>
      __$$BestMatchImplCopyWithImpl<_$BestMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestMatchImplToJson(
      this,
    );
  }
}

abstract class _BestMatch implements BestMatch {
  factory _BestMatch(
          {@JsonKey(name: '1. symbol') required final String symbol,
          @JsonKey(name: '2. name') required final String name,
          @JsonKey(name: '4. region') required final String region}) =
      _$BestMatchImpl;

  factory _BestMatch.fromJson(Map<String, dynamic> json) =
      _$BestMatchImpl.fromJson;

  @override
  @JsonKey(name: '1. symbol')
  String get symbol;
  @override
  @JsonKey(name: '2. name')
  String get name;
  @override
  @JsonKey(name: '4. region')
  String get region;

  /// Create a copy of BestMatch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BestMatchImplCopyWith<_$BestMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BestMatchesResponse _$BestMatchesResponseFromJson(Map<String, dynamic> json) {
  return _BestMatchesResponse.fromJson(json);
}

/// @nodoc
mixin _$BestMatchesResponse {
  List<BestMatch> get bestMatches => throw _privateConstructorUsedError;

  /// Serializes this BestMatchesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BestMatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BestMatchesResponseCopyWith<BestMatchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestMatchesResponseCopyWith<$Res> {
  factory $BestMatchesResponseCopyWith(
          BestMatchesResponse value, $Res Function(BestMatchesResponse) then) =
      _$BestMatchesResponseCopyWithImpl<$Res, BestMatchesResponse>;
  @useResult
  $Res call({List<BestMatch> bestMatches});
}

/// @nodoc
class _$BestMatchesResponseCopyWithImpl<$Res, $Val extends BestMatchesResponse>
    implements $BestMatchesResponseCopyWith<$Res> {
  _$BestMatchesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BestMatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestMatches = null,
  }) {
    return _then(_value.copyWith(
      bestMatches: null == bestMatches
          ? _value.bestMatches
          : bestMatches // ignore: cast_nullable_to_non_nullable
              as List<BestMatch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestMatchesResponseImplCopyWith<$Res>
    implements $BestMatchesResponseCopyWith<$Res> {
  factory _$$BestMatchesResponseImplCopyWith(_$BestMatchesResponseImpl value,
          $Res Function(_$BestMatchesResponseImpl) then) =
      __$$BestMatchesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BestMatch> bestMatches});
}

/// @nodoc
class __$$BestMatchesResponseImplCopyWithImpl<$Res>
    extends _$BestMatchesResponseCopyWithImpl<$Res, _$BestMatchesResponseImpl>
    implements _$$BestMatchesResponseImplCopyWith<$Res> {
  __$$BestMatchesResponseImplCopyWithImpl(_$BestMatchesResponseImpl _value,
      $Res Function(_$BestMatchesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BestMatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestMatches = null,
  }) {
    return _then(_$BestMatchesResponseImpl(
      bestMatches: null == bestMatches
          ? _value._bestMatches
          : bestMatches // ignore: cast_nullable_to_non_nullable
              as List<BestMatch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestMatchesResponseImpl implements _BestMatchesResponse {
  _$BestMatchesResponseImpl({required final List<BestMatch> bestMatches})
      : _bestMatches = bestMatches;

  factory _$BestMatchesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestMatchesResponseImplFromJson(json);

  final List<BestMatch> _bestMatches;
  @override
  List<BestMatch> get bestMatches {
    if (_bestMatches is EqualUnmodifiableListView) return _bestMatches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestMatches);
  }

  @override
  String toString() {
    return 'BestMatchesResponse(bestMatches: $bestMatches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestMatchesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._bestMatches, _bestMatches));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bestMatches));

  /// Create a copy of BestMatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BestMatchesResponseImplCopyWith<_$BestMatchesResponseImpl> get copyWith =>
      __$$BestMatchesResponseImplCopyWithImpl<_$BestMatchesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestMatchesResponseImplToJson(
      this,
    );
  }
}

abstract class _BestMatchesResponse implements BestMatchesResponse {
  factory _BestMatchesResponse({required final List<BestMatch> bestMatches}) =
      _$BestMatchesResponseImpl;

  factory _BestMatchesResponse.fromJson(Map<String, dynamic> json) =
      _$BestMatchesResponseImpl.fromJson;

  @override
  List<BestMatch> get bestMatches;

  /// Create a copy of BestMatchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BestMatchesResponseImplCopyWith<_$BestMatchesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
