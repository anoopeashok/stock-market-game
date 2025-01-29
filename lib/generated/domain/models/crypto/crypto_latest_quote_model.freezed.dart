// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/crypto/crypto_latest_quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatestCryptoQuoteModel _$LatestCryptoQuoteModelFromJson(
    Map<String, dynamic> json) {
  return _LatestCryptoQuoteModel.fromJson(json);
}

/// @nodoc
mixin _$LatestCryptoQuoteModel {
  Map<String, CryptoQuote> get quotes => throw _privateConstructorUsedError;

  /// Serializes this LatestCryptoQuoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LatestCryptoQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatestCryptoQuoteModelCopyWith<LatestCryptoQuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestCryptoQuoteModelCopyWith<$Res> {
  factory $LatestCryptoQuoteModelCopyWith(LatestCryptoQuoteModel value,
          $Res Function(LatestCryptoQuoteModel) then) =
      _$LatestCryptoQuoteModelCopyWithImpl<$Res, LatestCryptoQuoteModel>;
  @useResult
  $Res call({Map<String, CryptoQuote> quotes});
}

/// @nodoc
class _$LatestCryptoQuoteModelCopyWithImpl<$Res,
        $Val extends LatestCryptoQuoteModel>
    implements $LatestCryptoQuoteModelCopyWith<$Res> {
  _$LatestCryptoQuoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatestCryptoQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_value.copyWith(
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as Map<String, CryptoQuote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatestCryptoQuoteModelImplCopyWith<$Res>
    implements $LatestCryptoQuoteModelCopyWith<$Res> {
  factory _$$LatestCryptoQuoteModelImplCopyWith(
          _$LatestCryptoQuoteModelImpl value,
          $Res Function(_$LatestCryptoQuoteModelImpl) then) =
      __$$LatestCryptoQuoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CryptoQuote> quotes});
}

/// @nodoc
class __$$LatestCryptoQuoteModelImplCopyWithImpl<$Res>
    extends _$LatestCryptoQuoteModelCopyWithImpl<$Res,
        _$LatestCryptoQuoteModelImpl>
    implements _$$LatestCryptoQuoteModelImplCopyWith<$Res> {
  __$$LatestCryptoQuoteModelImplCopyWithImpl(
      _$LatestCryptoQuoteModelImpl _value,
      $Res Function(_$LatestCryptoQuoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestCryptoQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_$LatestCryptoQuoteModelImpl(
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as Map<String, CryptoQuote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatestCryptoQuoteModelImpl implements _LatestCryptoQuoteModel {
  const _$LatestCryptoQuoteModelImpl(
      {required final Map<String, CryptoQuote> quotes})
      : _quotes = quotes;

  factory _$LatestCryptoQuoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatestCryptoQuoteModelImplFromJson(json);

  final Map<String, CryptoQuote> _quotes;
  @override
  Map<String, CryptoQuote> get quotes {
    if (_quotes is EqualUnmodifiableMapView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quotes);
  }

  @override
  String toString() {
    return 'LatestCryptoQuoteModel(quotes: $quotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestCryptoQuoteModelImpl &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quotes));

  /// Create a copy of LatestCryptoQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LatestCryptoQuoteModelImplCopyWith<_$LatestCryptoQuoteModelImpl>
      get copyWith => __$$LatestCryptoQuoteModelImplCopyWithImpl<
          _$LatestCryptoQuoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatestCryptoQuoteModelImplToJson(
      this,
    );
  }
}

abstract class _LatestCryptoQuoteModel implements LatestCryptoQuoteModel {
  const factory _LatestCryptoQuoteModel(
          {required final Map<String, CryptoQuote> quotes}) =
      _$LatestCryptoQuoteModelImpl;

  factory _LatestCryptoQuoteModel.fromJson(Map<String, dynamic> json) =
      _$LatestCryptoQuoteModelImpl.fromJson;

  @override
  Map<String, CryptoQuote> get quotes;

  /// Create a copy of LatestCryptoQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LatestCryptoQuoteModelImplCopyWith<_$LatestCryptoQuoteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CryptoQuote _$CryptoQuoteFromJson(Map<String, dynamic> json) {
  return _CryptoQuote.fromJson(json);
}

/// @nodoc
mixin _$CryptoQuote {
  @JsonKey(name: 'ap')
  double get askPrice =>
      throw _privateConstructorUsedError; // Best ask/sell price
  @JsonKey(name: 'as')
  double get askSize =>
      throw _privateConstructorUsedError; // Amount available at ask price
  @JsonKey(name: 'bp')
  double get bidPrice =>
      throw _privateConstructorUsedError; // Best bid/buy price
  @JsonKey(name: 'bs')
  double get bidSize =>
      throw _privateConstructorUsedError; // Amount available at bid price
  @JsonKey(name: 't')
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this CryptoQuote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoQuoteCopyWith<CryptoQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoQuoteCopyWith<$Res> {
  factory $CryptoQuoteCopyWith(
          CryptoQuote value, $Res Function(CryptoQuote) then) =
      _$CryptoQuoteCopyWithImpl<$Res, CryptoQuote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ap') double askPrice,
      @JsonKey(name: 'as') double askSize,
      @JsonKey(name: 'bp') double bidPrice,
      @JsonKey(name: 'bs') double bidSize,
      @JsonKey(name: 't') DateTime timestamp});
}

/// @nodoc
class _$CryptoQuoteCopyWithImpl<$Res, $Val extends CryptoQuote>
    implements $CryptoQuoteCopyWith<$Res> {
  _$CryptoQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askPrice = null,
    Object? askSize = null,
    Object? bidPrice = null,
    Object? bidSize = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      askPrice: null == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      askSize: null == askSize
          ? _value.askSize
          : askSize // ignore: cast_nullable_to_non_nullable
              as double,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidSize: null == bidSize
          ? _value.bidSize
          : bidSize // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoQuoteImplCopyWith<$Res>
    implements $CryptoQuoteCopyWith<$Res> {
  factory _$$CryptoQuoteImplCopyWith(
          _$CryptoQuoteImpl value, $Res Function(_$CryptoQuoteImpl) then) =
      __$$CryptoQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ap') double askPrice,
      @JsonKey(name: 'as') double askSize,
      @JsonKey(name: 'bp') double bidPrice,
      @JsonKey(name: 'bs') double bidSize,
      @JsonKey(name: 't') DateTime timestamp});
}

/// @nodoc
class __$$CryptoQuoteImplCopyWithImpl<$Res>
    extends _$CryptoQuoteCopyWithImpl<$Res, _$CryptoQuoteImpl>
    implements _$$CryptoQuoteImplCopyWith<$Res> {
  __$$CryptoQuoteImplCopyWithImpl(
      _$CryptoQuoteImpl _value, $Res Function(_$CryptoQuoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askPrice = null,
    Object? askSize = null,
    Object? bidPrice = null,
    Object? bidSize = null,
    Object? timestamp = null,
  }) {
    return _then(_$CryptoQuoteImpl(
      askPrice: null == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      askSize: null == askSize
          ? _value.askSize
          : askSize // ignore: cast_nullable_to_non_nullable
              as double,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidSize: null == bidSize
          ? _value.bidSize
          : bidSize // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoQuoteImpl implements _CryptoQuote {
  const _$CryptoQuoteImpl(
      {@JsonKey(name: 'ap') required this.askPrice,
      @JsonKey(name: 'as') required this.askSize,
      @JsonKey(name: 'bp') required this.bidPrice,
      @JsonKey(name: 'bs') required this.bidSize,
      @JsonKey(name: 't') required this.timestamp});

  factory _$CryptoQuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoQuoteImplFromJson(json);

  @override
  @JsonKey(name: 'ap')
  final double askPrice;
// Best ask/sell price
  @override
  @JsonKey(name: 'as')
  final double askSize;
// Amount available at ask price
  @override
  @JsonKey(name: 'bp')
  final double bidPrice;
// Best bid/buy price
  @override
  @JsonKey(name: 'bs')
  final double bidSize;
// Amount available at bid price
  @override
  @JsonKey(name: 't')
  final DateTime timestamp;

  @override
  String toString() {
    return 'CryptoQuote(askPrice: $askPrice, askSize: $askSize, bidPrice: $bidPrice, bidSize: $bidSize, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoQuoteImpl &&
            (identical(other.askPrice, askPrice) ||
                other.askPrice == askPrice) &&
            (identical(other.askSize, askSize) || other.askSize == askSize) &&
            (identical(other.bidPrice, bidPrice) ||
                other.bidPrice == bidPrice) &&
            (identical(other.bidSize, bidSize) || other.bidSize == bidSize) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, askPrice, askSize, bidPrice, bidSize, timestamp);

  /// Create a copy of CryptoQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoQuoteImplCopyWith<_$CryptoQuoteImpl> get copyWith =>
      __$$CryptoQuoteImplCopyWithImpl<_$CryptoQuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoQuoteImplToJson(
      this,
    );
  }
}

abstract class _CryptoQuote implements CryptoQuote {
  const factory _CryptoQuote(
          {@JsonKey(name: 'ap') required final double askPrice,
          @JsonKey(name: 'as') required final double askSize,
          @JsonKey(name: 'bp') required final double bidPrice,
          @JsonKey(name: 'bs') required final double bidSize,
          @JsonKey(name: 't') required final DateTime timestamp}) =
      _$CryptoQuoteImpl;

  factory _CryptoQuote.fromJson(Map<String, dynamic> json) =
      _$CryptoQuoteImpl.fromJson;

  @override
  @JsonKey(name: 'ap')
  double get askPrice; // Best ask/sell price
  @override
  @JsonKey(name: 'as')
  double get askSize; // Amount available at ask price
  @override
  @JsonKey(name: 'bp')
  double get bidPrice; // Best bid/buy price
  @override
  @JsonKey(name: 'bs')
  double get bidSize; // Amount available at bid price
  @override
  @JsonKey(name: 't')
  DateTime get timestamp;

  /// Create a copy of CryptoQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoQuoteImplCopyWith<_$CryptoQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
