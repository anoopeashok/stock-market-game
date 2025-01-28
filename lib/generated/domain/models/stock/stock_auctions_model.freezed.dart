// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/stock/stock_auctions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuctionResponse _$AuctionResponseFromJson(Map<String, dynamic> json) {
  return _AuctionResponse.fromJson(json);
}

/// @nodoc
mixin _$AuctionResponse {
  Map<String, List<Auction>> get auctions => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_token')
  String? get nextPageToken => throw _privateConstructorUsedError;

  /// Serializes this AuctionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionResponseCopyWith<AuctionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionResponseCopyWith<$Res> {
  factory $AuctionResponseCopyWith(
          AuctionResponse value, $Res Function(AuctionResponse) then) =
      _$AuctionResponseCopyWithImpl<$Res, AuctionResponse>;
  @useResult
  $Res call(
      {Map<String, List<Auction>> auctions,
      @JsonKey(name: 'next_page_token') String? nextPageToken});
}

/// @nodoc
class _$AuctionResponseCopyWithImpl<$Res, $Val extends AuctionResponse>
    implements $AuctionResponseCopyWith<$Res> {
  _$AuctionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctions = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_value.copyWith(
      auctions: null == auctions
          ? _value.auctions
          : auctions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Auction>>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionResponseImplCopyWith<$Res>
    implements $AuctionResponseCopyWith<$Res> {
  factory _$$AuctionResponseImplCopyWith(_$AuctionResponseImpl value,
          $Res Function(_$AuctionResponseImpl) then) =
      __$$AuctionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<Auction>> auctions,
      @JsonKey(name: 'next_page_token') String? nextPageToken});
}

/// @nodoc
class __$$AuctionResponseImplCopyWithImpl<$Res>
    extends _$AuctionResponseCopyWithImpl<$Res, _$AuctionResponseImpl>
    implements _$$AuctionResponseImplCopyWith<$Res> {
  __$$AuctionResponseImplCopyWithImpl(
      _$AuctionResponseImpl _value, $Res Function(_$AuctionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctions = null,
    Object? nextPageToken = freezed,
  }) {
    return _then(_$AuctionResponseImpl(
      auctions: null == auctions
          ? _value._auctions
          : auctions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Auction>>,
      nextPageToken: freezed == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionResponseImpl implements _AuctionResponse {
  const _$AuctionResponseImpl(
      {required final Map<String, List<Auction>> auctions,
      @JsonKey(name: 'next_page_token') this.nextPageToken})
      : _auctions = auctions;

  factory _$AuctionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionResponseImplFromJson(json);

  final Map<String, List<Auction>> _auctions;
  @override
  Map<String, List<Auction>> get auctions {
    if (_auctions is EqualUnmodifiableMapView) return _auctions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_auctions);
  }

  @override
  @JsonKey(name: 'next_page_token')
  final String? nextPageToken;

  @override
  String toString() {
    return 'AuctionResponse(auctions: $auctions, nextPageToken: $nextPageToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionResponseImpl &&
            const DeepCollectionEquality().equals(other._auctions, _auctions) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_auctions), nextPageToken);

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionResponseImplCopyWith<_$AuctionResponseImpl> get copyWith =>
      __$$AuctionResponseImplCopyWithImpl<_$AuctionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionResponseImplToJson(
      this,
    );
  }
}

abstract class _AuctionResponse implements AuctionResponse {
  const factory _AuctionResponse(
          {required final Map<String, List<Auction>> auctions,
          @JsonKey(name: 'next_page_token') final String? nextPageToken}) =
      _$AuctionResponseImpl;

  factory _AuctionResponse.fromJson(Map<String, dynamic> json) =
      _$AuctionResponseImpl.fromJson;

  @override
  Map<String, List<Auction>> get auctions;
  @override
  @JsonKey(name: 'next_page_token')
  String? get nextPageToken;

  /// Create a copy of AuctionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionResponseImplCopyWith<_$AuctionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Auction _$AuctionFromJson(Map<String, dynamic> json) {
  return _Auction.fromJson(json);
}

/// @nodoc
mixin _$Auction {
  List<Trade> get c =>
      throw _privateConstructorUsedError; // Closing auction data
  List<Trade> get o =>
      throw _privateConstructorUsedError; // Opening auction data
  String get d => throw _privateConstructorUsedError;

  /// Serializes this Auction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Auction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionCopyWith<Auction> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionCopyWith<$Res> {
  factory $AuctionCopyWith(Auction value, $Res Function(Auction) then) =
      _$AuctionCopyWithImpl<$Res, Auction>;
  @useResult
  $Res call({List<Trade> c, List<Trade> o, String d});
}

/// @nodoc
class _$AuctionCopyWithImpl<$Res, $Val extends Auction>
    implements $AuctionCopyWith<$Res> {
  _$AuctionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? c = null,
    Object? o = null,
    Object? d = null,
  }) {
    return _then(_value.copyWith(
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as List<Trade>,
      o: null == o
          ? _value.o
          : o // ignore: cast_nullable_to_non_nullable
              as List<Trade>,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionImplCopyWith<$Res> implements $AuctionCopyWith<$Res> {
  factory _$$AuctionImplCopyWith(
          _$AuctionImpl value, $Res Function(_$AuctionImpl) then) =
      __$$AuctionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Trade> c, List<Trade> o, String d});
}

/// @nodoc
class __$$AuctionImplCopyWithImpl<$Res>
    extends _$AuctionCopyWithImpl<$Res, _$AuctionImpl>
    implements _$$AuctionImplCopyWith<$Res> {
  __$$AuctionImplCopyWithImpl(
      _$AuctionImpl _value, $Res Function(_$AuctionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? c = null,
    Object? o = null,
    Object? d = null,
  }) {
    return _then(_$AuctionImpl(
      c: null == c
          ? _value._c
          : c // ignore: cast_nullable_to_non_nullable
              as List<Trade>,
      o: null == o
          ? _value._o
          : o // ignore: cast_nullable_to_non_nullable
              as List<Trade>,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionImpl implements _Auction {
  const _$AuctionImpl(
      {required final List<Trade> c,
      required final List<Trade> o,
      required this.d})
      : _c = c,
        _o = o;

  factory _$AuctionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionImplFromJson(json);

  final List<Trade> _c;
  @override
  List<Trade> get c {
    if (_c is EqualUnmodifiableListView) return _c;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_c);
  }

// Closing auction data
  final List<Trade> _o;
// Closing auction data
  @override
  List<Trade> get o {
    if (_o is EqualUnmodifiableListView) return _o;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_o);
  }

// Opening auction data
  @override
  final String d;

  @override
  String toString() {
    return 'Auction(c: $c, o: $o, d: $d)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionImpl &&
            const DeepCollectionEquality().equals(other._c, _c) &&
            const DeepCollectionEquality().equals(other._o, _o) &&
            (identical(other.d, d) || other.d == d));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_c),
      const DeepCollectionEquality().hash(_o),
      d);

  /// Create a copy of Auction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionImplCopyWith<_$AuctionImpl> get copyWith =>
      __$$AuctionImplCopyWithImpl<_$AuctionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionImplToJson(
      this,
    );
  }
}

abstract class _Auction implements Auction {
  const factory _Auction(
      {required final List<Trade> c,
      required final List<Trade> o,
      required final String d}) = _$AuctionImpl;

  factory _Auction.fromJson(Map<String, dynamic> json) = _$AuctionImpl.fromJson;

  @override
  List<Trade> get c; // Closing auction data
  @override
  List<Trade> get o; // Opening auction data
  @override
  String get d;

  /// Create a copy of Auction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionImplCopyWith<_$AuctionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Trade _$TradeFromJson(Map<String, dynamic> json) {
  return _Trade.fromJson(json);
}

/// @nodoc
mixin _$Trade {
  String get c => throw _privateConstructorUsedError; // Condition
  double get p => throw _privateConstructorUsedError; // Price
  int get s => throw _privateConstructorUsedError; // Size
  String get t => throw _privateConstructorUsedError; // Timestamp
  String get x => throw _privateConstructorUsedError;

  /// Serializes this Trade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeCopyWith<Trade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeCopyWith<$Res> {
  factory $TradeCopyWith(Trade value, $Res Function(Trade) then) =
      _$TradeCopyWithImpl<$Res, Trade>;
  @useResult
  $Res call({String c, double p, int s, String t, String x});
}

/// @nodoc
class _$TradeCopyWithImpl<$Res, $Val extends Trade>
    implements $TradeCopyWith<$Res> {
  _$TradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? c = null,
    Object? p = null,
    Object? s = null,
    Object? t = null,
    Object? x = null,
  }) {
    return _then(_value.copyWith(
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as double,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeImplCopyWith<$Res> implements $TradeCopyWith<$Res> {
  factory _$$TradeImplCopyWith(
          _$TradeImpl value, $Res Function(_$TradeImpl) then) =
      __$$TradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String c, double p, int s, String t, String x});
}

/// @nodoc
class __$$TradeImplCopyWithImpl<$Res>
    extends _$TradeCopyWithImpl<$Res, _$TradeImpl>
    implements _$$TradeImplCopyWith<$Res> {
  __$$TradeImplCopyWithImpl(
      _$TradeImpl _value, $Res Function(_$TradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? c = null,
    Object? p = null,
    Object? s = null,
    Object? t = null,
    Object? x = null,
  }) {
    return _then(_$TradeImpl(
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as double,
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as int,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeImpl implements _Trade {
  const _$TradeImpl(
      {required this.c,
      required this.p,
      required this.s,
      required this.t,
      required this.x});

  factory _$TradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeImplFromJson(json);

  @override
  final String c;
// Condition
  @override
  final double p;
// Price
  @override
  final int s;
// Size
  @override
  final String t;
// Timestamp
  @override
  final String x;

  @override
  String toString() {
    return 'Trade(c: $c, p: $p, s: $s, t: $t, x: $x)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeImpl &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.p, p) || other.p == p) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.x, x) || other.x == x));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, c, p, s, t, x);

  /// Create a copy of Trade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeImplCopyWith<_$TradeImpl> get copyWith =>
      __$$TradeImplCopyWithImpl<_$TradeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeImplToJson(
      this,
    );
  }
}

abstract class _Trade implements Trade {
  const factory _Trade(
      {required final String c,
      required final double p,
      required final int s,
      required final String t,
      required final String x}) = _$TradeImpl;

  factory _Trade.fromJson(Map<String, dynamic> json) = _$TradeImpl.fromJson;

  @override
  String get c; // Condition
  @override
  double get p; // Price
  @override
  int get s; // Size
  @override
  String get t; // Timestamp
  @override
  String get x;

  /// Create a copy of Trade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeImplCopyWith<_$TradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
