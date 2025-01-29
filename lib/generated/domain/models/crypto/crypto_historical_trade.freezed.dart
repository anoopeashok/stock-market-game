// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/crypto/crypto_historical_trade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoTradeHistoryModel _$CryptoTradeHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _CryptoTradeHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoTradeHistoryModel {
  @JsonKey(name: 'next_page_token')
  String get nextPageToken => throw _privateConstructorUsedError;
  Map<String, List<Trade>> get trades => throw _privateConstructorUsedError;

  /// Serializes this CryptoTradeHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoTradeHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoTradeHistoryModelCopyWith<CryptoTradeHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoTradeHistoryModelCopyWith<$Res> {
  factory $CryptoTradeHistoryModelCopyWith(CryptoTradeHistoryModel value,
          $Res Function(CryptoTradeHistoryModel) then) =
      _$CryptoTradeHistoryModelCopyWithImpl<$Res, CryptoTradeHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'next_page_token') String nextPageToken,
      Map<String, List<Trade>> trades});
}

/// @nodoc
class _$CryptoTradeHistoryModelCopyWithImpl<$Res,
        $Val extends CryptoTradeHistoryModel>
    implements $CryptoTradeHistoryModelCopyWith<$Res> {
  _$CryptoTradeHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoTradeHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPageToken = null,
    Object? trades = null,
  }) {
    return _then(_value.copyWith(
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      trades: null == trades
          ? _value.trades
          : trades // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Trade>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoTradeHistoryModelImplCopyWith<$Res>
    implements $CryptoTradeHistoryModelCopyWith<$Res> {
  factory _$$CryptoTradeHistoryModelImplCopyWith(
          _$CryptoTradeHistoryModelImpl value,
          $Res Function(_$CryptoTradeHistoryModelImpl) then) =
      __$$CryptoTradeHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'next_page_token') String nextPageToken,
      Map<String, List<Trade>> trades});
}

/// @nodoc
class __$$CryptoTradeHistoryModelImplCopyWithImpl<$Res>
    extends _$CryptoTradeHistoryModelCopyWithImpl<$Res,
        _$CryptoTradeHistoryModelImpl>
    implements _$$CryptoTradeHistoryModelImplCopyWith<$Res> {
  __$$CryptoTradeHistoryModelImplCopyWithImpl(
      _$CryptoTradeHistoryModelImpl _value,
      $Res Function(_$CryptoTradeHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoTradeHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPageToken = null,
    Object? trades = null,
  }) {
    return _then(_$CryptoTradeHistoryModelImpl(
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      trades: null == trades
          ? _value._trades
          : trades // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Trade>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoTradeHistoryModelImpl implements _CryptoTradeHistoryModel {
  const _$CryptoTradeHistoryModelImpl(
      {@JsonKey(name: 'next_page_token') required this.nextPageToken,
      required final Map<String, List<Trade>> trades})
      : _trades = trades;

  factory _$CryptoTradeHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoTradeHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'next_page_token')
  final String nextPageToken;
  final Map<String, List<Trade>> _trades;
  @override
  Map<String, List<Trade>> get trades {
    if (_trades is EqualUnmodifiableMapView) return _trades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_trades);
  }

  @override
  String toString() {
    return 'CryptoTradeHistoryModel(nextPageToken: $nextPageToken, trades: $trades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoTradeHistoryModelImpl &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken) &&
            const DeepCollectionEquality().equals(other._trades, _trades));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, nextPageToken, const DeepCollectionEquality().hash(_trades));

  /// Create a copy of CryptoTradeHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoTradeHistoryModelImplCopyWith<_$CryptoTradeHistoryModelImpl>
      get copyWith => __$$CryptoTradeHistoryModelImplCopyWithImpl<
          _$CryptoTradeHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoTradeHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _CryptoTradeHistoryModel implements CryptoTradeHistoryModel {
  const factory _CryptoTradeHistoryModel(
      {@JsonKey(name: 'next_page_token') required final String nextPageToken,
      required final Map<String, List<Trade>>
          trades}) = _$CryptoTradeHistoryModelImpl;

  factory _CryptoTradeHistoryModel.fromJson(Map<String, dynamic> json) =
      _$CryptoTradeHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'next_page_token')
  String get nextPageToken;
  @override
  Map<String, List<Trade>> get trades;

  /// Create a copy of CryptoTradeHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoTradeHistoryModelImplCopyWith<_$CryptoTradeHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Trade _$TradeFromJson(Map<String, dynamic> json) {
  return _Trade.fromJson(json);
}

/// @nodoc
mixin _$Trade {
  @JsonKey(name: 'i')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'p')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 's')
  double get size => throw _privateConstructorUsedError;
  @JsonKey(name: 't')
  DateTime get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'tks')
  String get tradeSide => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'i') int id,
      @JsonKey(name: 'p') double price,
      @JsonKey(name: 's') double size,
      @JsonKey(name: 't') DateTime timestamp,
      @JsonKey(name: 'tks') String tradeSide});
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
    Object? id = null,
    Object? price = null,
    Object? size = null,
    Object? timestamp = null,
    Object? tradeSide = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tradeSide: null == tradeSide
          ? _value.tradeSide
          : tradeSide // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: 'i') int id,
      @JsonKey(name: 'p') double price,
      @JsonKey(name: 's') double size,
      @JsonKey(name: 't') DateTime timestamp,
      @JsonKey(name: 'tks') String tradeSide});
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
    Object? id = null,
    Object? price = null,
    Object? size = null,
    Object? timestamp = null,
    Object? tradeSide = null,
  }) {
    return _then(_$TradeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tradeSide: null == tradeSide
          ? _value.tradeSide
          : tradeSide // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeImpl implements _Trade {
  const _$TradeImpl(
      {@JsonKey(name: 'i') required this.id,
      @JsonKey(name: 'p') required this.price,
      @JsonKey(name: 's') required this.size,
      @JsonKey(name: 't') required this.timestamp,
      @JsonKey(name: 'tks') required this.tradeSide});

  factory _$TradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeImplFromJson(json);

  @override
  @JsonKey(name: 'i')
  final int id;
  @override
  @JsonKey(name: 'p')
  final double price;
  @override
  @JsonKey(name: 's')
  final double size;
  @override
  @JsonKey(name: 't')
  final DateTime timestamp;
  @override
  @JsonKey(name: 'tks')
  final String tradeSide;

  @override
  String toString() {
    return 'Trade(id: $id, price: $price, size: $size, timestamp: $timestamp, tradeSide: $tradeSide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.tradeSide, tradeSide) ||
                other.tradeSide == tradeSide));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, price, size, timestamp, tradeSide);

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
      {@JsonKey(name: 'i') required final int id,
      @JsonKey(name: 'p') required final double price,
      @JsonKey(name: 's') required final double size,
      @JsonKey(name: 't') required final DateTime timestamp,
      @JsonKey(name: 'tks') required final String tradeSide}) = _$TradeImpl;

  factory _Trade.fromJson(Map<String, dynamic> json) = _$TradeImpl.fromJson;

  @override
  @JsonKey(name: 'i')
  int get id;
  @override
  @JsonKey(name: 'p')
  double get price;
  @override
  @JsonKey(name: 's')
  double get size;
  @override
  @JsonKey(name: 't')
  DateTime get timestamp;
  @override
  @JsonKey(name: 'tks')
  String get tradeSide;

  /// Create a copy of Trade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeImplCopyWith<_$TradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
