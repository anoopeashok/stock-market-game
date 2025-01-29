// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/stock/stock_latest_quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatestStockQuoteModel _$LatestStockQuoteModelFromJson(
    Map<String, dynamic> json) {
  return _LatestStockQuoteModel.fromJson(json);
}

/// @nodoc
mixin _$LatestStockQuoteModel {
  Map<String, StockQuote> get quotes => throw _privateConstructorUsedError;

  /// Serializes this LatestStockQuoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LatestStockQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LatestStockQuoteModelCopyWith<LatestStockQuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestStockQuoteModelCopyWith<$Res> {
  factory $LatestStockQuoteModelCopyWith(LatestStockQuoteModel value,
          $Res Function(LatestStockQuoteModel) then) =
      _$LatestStockQuoteModelCopyWithImpl<$Res, LatestStockQuoteModel>;
  @useResult
  $Res call({Map<String, StockQuote> quotes});
}

/// @nodoc
class _$LatestStockQuoteModelCopyWithImpl<$Res,
        $Val extends LatestStockQuoteModel>
    implements $LatestStockQuoteModelCopyWith<$Res> {
  _$LatestStockQuoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LatestStockQuoteModel
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
              as Map<String, StockQuote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatestStockQuoteModelImplCopyWith<$Res>
    implements $LatestStockQuoteModelCopyWith<$Res> {
  factory _$$LatestStockQuoteModelImplCopyWith(
          _$LatestStockQuoteModelImpl value,
          $Res Function(_$LatestStockQuoteModelImpl) then) =
      __$$LatestStockQuoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, StockQuote> quotes});
}

/// @nodoc
class __$$LatestStockQuoteModelImplCopyWithImpl<$Res>
    extends _$LatestStockQuoteModelCopyWithImpl<$Res,
        _$LatestStockQuoteModelImpl>
    implements _$$LatestStockQuoteModelImplCopyWith<$Res> {
  __$$LatestStockQuoteModelImplCopyWithImpl(_$LatestStockQuoteModelImpl _value,
      $Res Function(_$LatestStockQuoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LatestStockQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_$LatestStockQuoteModelImpl(
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as Map<String, StockQuote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatestStockQuoteModelImpl implements _LatestStockQuoteModel {
  const _$LatestStockQuoteModelImpl(
      {required final Map<String, StockQuote> quotes})
      : _quotes = quotes;

  factory _$LatestStockQuoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatestStockQuoteModelImplFromJson(json);

  final Map<String, StockQuote> _quotes;
  @override
  Map<String, StockQuote> get quotes {
    if (_quotes is EqualUnmodifiableMapView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quotes);
  }

  @override
  String toString() {
    return 'LatestStockQuoteModel(quotes: $quotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestStockQuoteModelImpl &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quotes));

  /// Create a copy of LatestStockQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LatestStockQuoteModelImplCopyWith<_$LatestStockQuoteModelImpl>
      get copyWith => __$$LatestStockQuoteModelImplCopyWithImpl<
          _$LatestStockQuoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatestStockQuoteModelImplToJson(
      this,
    );
  }
}

abstract class _LatestStockQuoteModel implements LatestStockQuoteModel {
  const factory _LatestStockQuoteModel(
          {required final Map<String, StockQuote> quotes}) =
      _$LatestStockQuoteModelImpl;

  factory _LatestStockQuoteModel.fromJson(Map<String, dynamic> json) =
      _$LatestStockQuoteModelImpl.fromJson;

  @override
  Map<String, StockQuote> get quotes;

  /// Create a copy of LatestStockQuoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LatestStockQuoteModelImplCopyWith<_$LatestStockQuoteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StockQuote _$StockQuoteFromJson(Map<String, dynamic> json) {
  return _StockQuote.fromJson(json);
}

/// @nodoc
mixin _$StockQuote {
  @JsonKey(name: 'ap')
  double get askPrice =>
      throw _privateConstructorUsedError; // Best ask/sell price
  @JsonKey(name: 'as')
  int get askSize =>
      throw _privateConstructorUsedError; // Number of shares available at ask price
  @JsonKey(name: 'ax')
  String get askExchange =>
      throw _privateConstructorUsedError; // Exchange code where ask price is quoted
  @JsonKey(name: 'bp')
  double get bidPrice =>
      throw _privateConstructorUsedError; // Best bid/buy price
  @JsonKey(name: 'bs')
  int get bidSize =>
      throw _privateConstructorUsedError; // Number of shares available at bid price
  @JsonKey(name: 'bx')
  String get bidExchange =>
      throw _privateConstructorUsedError; // Exchange code where bid price is quoted
  @JsonKey(name: 'c')
  List<String> get conditions =>
      throw _privateConstructorUsedError; // Trading conditions/indicators
  @JsonKey(name: 't')
  DateTime get timestamp =>
      throw _privateConstructorUsedError; // Timestamp of the quote
  @JsonKey(name: 'z')
  String get tape => throw _privateConstructorUsedError;

  /// Serializes this StockQuote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockQuoteCopyWith<StockQuote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockQuoteCopyWith<$Res> {
  factory $StockQuoteCopyWith(
          StockQuote value, $Res Function(StockQuote) then) =
      _$StockQuoteCopyWithImpl<$Res, StockQuote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ap') double askPrice,
      @JsonKey(name: 'as') int askSize,
      @JsonKey(name: 'ax') String askExchange,
      @JsonKey(name: 'bp') double bidPrice,
      @JsonKey(name: 'bs') int bidSize,
      @JsonKey(name: 'bx') String bidExchange,
      @JsonKey(name: 'c') List<String> conditions,
      @JsonKey(name: 't') DateTime timestamp,
      @JsonKey(name: 'z') String tape});
}

/// @nodoc
class _$StockQuoteCopyWithImpl<$Res, $Val extends StockQuote>
    implements $StockQuoteCopyWith<$Res> {
  _$StockQuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askPrice = null,
    Object? askSize = null,
    Object? askExchange = null,
    Object? bidPrice = null,
    Object? bidSize = null,
    Object? bidExchange = null,
    Object? conditions = null,
    Object? timestamp = null,
    Object? tape = null,
  }) {
    return _then(_value.copyWith(
      askPrice: null == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      askSize: null == askSize
          ? _value.askSize
          : askSize // ignore: cast_nullable_to_non_nullable
              as int,
      askExchange: null == askExchange
          ? _value.askExchange
          : askExchange // ignore: cast_nullable_to_non_nullable
              as String,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidSize: null == bidSize
          ? _value.bidSize
          : bidSize // ignore: cast_nullable_to_non_nullable
              as int,
      bidExchange: null == bidExchange
          ? _value.bidExchange
          : bidExchange // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tape: null == tape
          ? _value.tape
          : tape // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockQuoteImplCopyWith<$Res>
    implements $StockQuoteCopyWith<$Res> {
  factory _$$StockQuoteImplCopyWith(
          _$StockQuoteImpl value, $Res Function(_$StockQuoteImpl) then) =
      __$$StockQuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ap') double askPrice,
      @JsonKey(name: 'as') int askSize,
      @JsonKey(name: 'ax') String askExchange,
      @JsonKey(name: 'bp') double bidPrice,
      @JsonKey(name: 'bs') int bidSize,
      @JsonKey(name: 'bx') String bidExchange,
      @JsonKey(name: 'c') List<String> conditions,
      @JsonKey(name: 't') DateTime timestamp,
      @JsonKey(name: 'z') String tape});
}

/// @nodoc
class __$$StockQuoteImplCopyWithImpl<$Res>
    extends _$StockQuoteCopyWithImpl<$Res, _$StockQuoteImpl>
    implements _$$StockQuoteImplCopyWith<$Res> {
  __$$StockQuoteImplCopyWithImpl(
      _$StockQuoteImpl _value, $Res Function(_$StockQuoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockQuote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? askPrice = null,
    Object? askSize = null,
    Object? askExchange = null,
    Object? bidPrice = null,
    Object? bidSize = null,
    Object? bidExchange = null,
    Object? conditions = null,
    Object? timestamp = null,
    Object? tape = null,
  }) {
    return _then(_$StockQuoteImpl(
      askPrice: null == askPrice
          ? _value.askPrice
          : askPrice // ignore: cast_nullable_to_non_nullable
              as double,
      askSize: null == askSize
          ? _value.askSize
          : askSize // ignore: cast_nullable_to_non_nullable
              as int,
      askExchange: null == askExchange
          ? _value.askExchange
          : askExchange // ignore: cast_nullable_to_non_nullable
              as String,
      bidPrice: null == bidPrice
          ? _value.bidPrice
          : bidPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bidSize: null == bidSize
          ? _value.bidSize
          : bidSize // ignore: cast_nullable_to_non_nullable
              as int,
      bidExchange: null == bidExchange
          ? _value.bidExchange
          : bidExchange // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tape: null == tape
          ? _value.tape
          : tape // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockQuoteImpl implements _StockQuote {
  const _$StockQuoteImpl(
      {@JsonKey(name: 'ap') required this.askPrice,
      @JsonKey(name: 'as') required this.askSize,
      @JsonKey(name: 'ax') required this.askExchange,
      @JsonKey(name: 'bp') required this.bidPrice,
      @JsonKey(name: 'bs') required this.bidSize,
      @JsonKey(name: 'bx') required this.bidExchange,
      @JsonKey(name: 'c') required final List<String> conditions,
      @JsonKey(name: 't') required this.timestamp,
      @JsonKey(name: 'z') required this.tape})
      : _conditions = conditions;

  factory _$StockQuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockQuoteImplFromJson(json);

  @override
  @JsonKey(name: 'ap')
  final double askPrice;
// Best ask/sell price
  @override
  @JsonKey(name: 'as')
  final int askSize;
// Number of shares available at ask price
  @override
  @JsonKey(name: 'ax')
  final String askExchange;
// Exchange code where ask price is quoted
  @override
  @JsonKey(name: 'bp')
  final double bidPrice;
// Best bid/buy price
  @override
  @JsonKey(name: 'bs')
  final int bidSize;
// Number of shares available at bid price
  @override
  @JsonKey(name: 'bx')
  final String bidExchange;
// Exchange code where bid price is quoted
  final List<String> _conditions;
// Exchange code where bid price is quoted
  @override
  @JsonKey(name: 'c')
  List<String> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

// Trading conditions/indicators
  @override
  @JsonKey(name: 't')
  final DateTime timestamp;
// Timestamp of the quote
  @override
  @JsonKey(name: 'z')
  final String tape;

  @override
  String toString() {
    return 'StockQuote(askPrice: $askPrice, askSize: $askSize, askExchange: $askExchange, bidPrice: $bidPrice, bidSize: $bidSize, bidExchange: $bidExchange, conditions: $conditions, timestamp: $timestamp, tape: $tape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockQuoteImpl &&
            (identical(other.askPrice, askPrice) ||
                other.askPrice == askPrice) &&
            (identical(other.askSize, askSize) || other.askSize == askSize) &&
            (identical(other.askExchange, askExchange) ||
                other.askExchange == askExchange) &&
            (identical(other.bidPrice, bidPrice) ||
                other.bidPrice == bidPrice) &&
            (identical(other.bidSize, bidSize) || other.bidSize == bidSize) &&
            (identical(other.bidExchange, bidExchange) ||
                other.bidExchange == bidExchange) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.tape, tape) || other.tape == tape));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      askPrice,
      askSize,
      askExchange,
      bidPrice,
      bidSize,
      bidExchange,
      const DeepCollectionEquality().hash(_conditions),
      timestamp,
      tape);

  /// Create a copy of StockQuote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockQuoteImplCopyWith<_$StockQuoteImpl> get copyWith =>
      __$$StockQuoteImplCopyWithImpl<_$StockQuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockQuoteImplToJson(
      this,
    );
  }
}

abstract class _StockQuote implements StockQuote {
  const factory _StockQuote(
      {@JsonKey(name: 'ap') required final double askPrice,
      @JsonKey(name: 'as') required final int askSize,
      @JsonKey(name: 'ax') required final String askExchange,
      @JsonKey(name: 'bp') required final double bidPrice,
      @JsonKey(name: 'bs') required final int bidSize,
      @JsonKey(name: 'bx') required final String bidExchange,
      @JsonKey(name: 'c') required final List<String> conditions,
      @JsonKey(name: 't') required final DateTime timestamp,
      @JsonKey(name: 'z') required final String tape}) = _$StockQuoteImpl;

  factory _StockQuote.fromJson(Map<String, dynamic> json) =
      _$StockQuoteImpl.fromJson;

  @override
  @JsonKey(name: 'ap')
  double get askPrice; // Best ask/sell price
  @override
  @JsonKey(name: 'as')
  int get askSize; // Number of shares available at ask price
  @override
  @JsonKey(name: 'ax')
  String get askExchange; // Exchange code where ask price is quoted
  @override
  @JsonKey(name: 'bp')
  double get bidPrice; // Best bid/buy price
  @override
  @JsonKey(name: 'bs')
  int get bidSize; // Number of shares available at bid price
  @override
  @JsonKey(name: 'bx')
  String get bidExchange; // Exchange code where bid price is quoted
  @override
  @JsonKey(name: 'c')
  List<String> get conditions; // Trading conditions/indicators
  @override
  @JsonKey(name: 't')
  DateTime get timestamp; // Timestamp of the quote
  @override
  @JsonKey(name: 'z')
  String get tape;

  /// Create a copy of StockQuote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockQuoteImplCopyWith<_$StockQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
