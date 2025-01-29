// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/stock/stock_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockData {
  List<StockInfo> get stocks => throw _privateConstructorUsedError;

  /// Create a copy of StockData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockDataCopyWith<StockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDataCopyWith<$Res> {
  factory $StockDataCopyWith(StockData value, $Res Function(StockData) then) =
      _$StockDataCopyWithImpl<$Res, StockData>;
  @useResult
  $Res call({List<StockInfo> stocks});
}

/// @nodoc
class _$StockDataCopyWithImpl<$Res, $Val extends StockData>
    implements $StockDataCopyWith<$Res> {
  _$StockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_value.copyWith(
      stocks: null == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockDataImplCopyWith<$Res>
    implements $StockDataCopyWith<$Res> {
  factory _$$StockDataImplCopyWith(
          _$StockDataImpl value, $Res Function(_$StockDataImpl) then) =
      __$$StockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StockInfo> stocks});
}

/// @nodoc
class __$$StockDataImplCopyWithImpl<$Res>
    extends _$StockDataCopyWithImpl<$Res, _$StockDataImpl>
    implements _$$StockDataImplCopyWith<$Res> {
  __$$StockDataImplCopyWithImpl(
      _$StockDataImpl _value, $Res Function(_$StockDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_$StockDataImpl(
      stocks: null == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockInfo>,
    ));
  }
}

/// @nodoc

class _$StockDataImpl implements _StockData {
  const _$StockDataImpl({required final List<StockInfo> stocks})
      : _stocks = stocks;

  final List<StockInfo> _stocks;
  @override
  List<StockInfo> get stocks {
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  String toString() {
    return 'StockData(stocks: $stocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDataImpl &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stocks));

  /// Create a copy of StockData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDataImplCopyWith<_$StockDataImpl> get copyWith =>
      __$$StockDataImplCopyWithImpl<_$StockDataImpl>(this, _$identity);
}

abstract class _StockData implements StockData {
  const factory _StockData({required final List<StockInfo> stocks}) =
      _$StockDataImpl;

  @override
  List<StockInfo> get stocks;

  /// Create a copy of StockData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockDataImplCopyWith<_$StockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockInfo _$StockInfoFromJson(Map<String, dynamic> json) {
  return _StockInfo.fromJson(json);
}

/// @nodoc
mixin _$StockInfo {
  String get name => throw _privateConstructorUsedError;
  Bar get dailyBar => throw _privateConstructorUsedError;
  Quote get latestQuote => throw _privateConstructorUsedError;
  Trade get latestTrade => throw _privateConstructorUsedError;
  Bar get minuteBar => throw _privateConstructorUsedError;
  Bar get prevDailyBar => throw _privateConstructorUsedError;

  /// Serializes this StockInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockInfoCopyWith<StockInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockInfoCopyWith<$Res> {
  factory $StockInfoCopyWith(StockInfo value, $Res Function(StockInfo) then) =
      _$StockInfoCopyWithImpl<$Res, StockInfo>;
  @useResult
  $Res call(
      {String name,
      Bar dailyBar,
      Quote latestQuote,
      Trade latestTrade,
      Bar minuteBar,
      Bar prevDailyBar});

  $BarCopyWith<$Res> get dailyBar;
  $QuoteCopyWith<$Res> get latestQuote;
  $TradeCopyWith<$Res> get latestTrade;
  $BarCopyWith<$Res> get minuteBar;
  $BarCopyWith<$Res> get prevDailyBar;
}

/// @nodoc
class _$StockInfoCopyWithImpl<$Res, $Val extends StockInfo>
    implements $StockInfoCopyWith<$Res> {
  _$StockInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dailyBar = null,
    Object? latestQuote = null,
    Object? latestTrade = null,
    Object? minuteBar = null,
    Object? prevDailyBar = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dailyBar: null == dailyBar
          ? _value.dailyBar
          : dailyBar // ignore: cast_nullable_to_non_nullable
              as Bar,
      latestQuote: null == latestQuote
          ? _value.latestQuote
          : latestQuote // ignore: cast_nullable_to_non_nullable
              as Quote,
      latestTrade: null == latestTrade
          ? _value.latestTrade
          : latestTrade // ignore: cast_nullable_to_non_nullable
              as Trade,
      minuteBar: null == minuteBar
          ? _value.minuteBar
          : minuteBar // ignore: cast_nullable_to_non_nullable
              as Bar,
      prevDailyBar: null == prevDailyBar
          ? _value.prevDailyBar
          : prevDailyBar // ignore: cast_nullable_to_non_nullable
              as Bar,
    ) as $Val);
  }

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BarCopyWith<$Res> get dailyBar {
    return $BarCopyWith<$Res>(_value.dailyBar, (value) {
      return _then(_value.copyWith(dailyBar: value) as $Val);
    });
  }

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuoteCopyWith<$Res> get latestQuote {
    return $QuoteCopyWith<$Res>(_value.latestQuote, (value) {
      return _then(_value.copyWith(latestQuote: value) as $Val);
    });
  }

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TradeCopyWith<$Res> get latestTrade {
    return $TradeCopyWith<$Res>(_value.latestTrade, (value) {
      return _then(_value.copyWith(latestTrade: value) as $Val);
    });
  }

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BarCopyWith<$Res> get minuteBar {
    return $BarCopyWith<$Res>(_value.minuteBar, (value) {
      return _then(_value.copyWith(minuteBar: value) as $Val);
    });
  }

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BarCopyWith<$Res> get prevDailyBar {
    return $BarCopyWith<$Res>(_value.prevDailyBar, (value) {
      return _then(_value.copyWith(prevDailyBar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockInfoImplCopyWith<$Res>
    implements $StockInfoCopyWith<$Res> {
  factory _$$StockInfoImplCopyWith(
          _$StockInfoImpl value, $Res Function(_$StockInfoImpl) then) =
      __$$StockInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Bar dailyBar,
      Quote latestQuote,
      Trade latestTrade,
      Bar minuteBar,
      Bar prevDailyBar});

  @override
  $BarCopyWith<$Res> get dailyBar;
  @override
  $QuoteCopyWith<$Res> get latestQuote;
  @override
  $TradeCopyWith<$Res> get latestTrade;
  @override
  $BarCopyWith<$Res> get minuteBar;
  @override
  $BarCopyWith<$Res> get prevDailyBar;
}

/// @nodoc
class __$$StockInfoImplCopyWithImpl<$Res>
    extends _$StockInfoCopyWithImpl<$Res, _$StockInfoImpl>
    implements _$$StockInfoImplCopyWith<$Res> {
  __$$StockInfoImplCopyWithImpl(
      _$StockInfoImpl _value, $Res Function(_$StockInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dailyBar = null,
    Object? latestQuote = null,
    Object? latestTrade = null,
    Object? minuteBar = null,
    Object? prevDailyBar = null,
  }) {
    return _then(_$StockInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dailyBar: null == dailyBar
          ? _value.dailyBar
          : dailyBar // ignore: cast_nullable_to_non_nullable
              as Bar,
      latestQuote: null == latestQuote
          ? _value.latestQuote
          : latestQuote // ignore: cast_nullable_to_non_nullable
              as Quote,
      latestTrade: null == latestTrade
          ? _value.latestTrade
          : latestTrade // ignore: cast_nullable_to_non_nullable
              as Trade,
      minuteBar: null == minuteBar
          ? _value.minuteBar
          : minuteBar // ignore: cast_nullable_to_non_nullable
              as Bar,
      prevDailyBar: null == prevDailyBar
          ? _value.prevDailyBar
          : prevDailyBar // ignore: cast_nullable_to_non_nullable
              as Bar,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockInfoImpl implements _StockInfo {
  const _$StockInfoImpl(
      {required this.name,
      required this.dailyBar,
      required this.latestQuote,
      required this.latestTrade,
      required this.minuteBar,
      required this.prevDailyBar});

  factory _$StockInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockInfoImplFromJson(json);

  @override
  final String name;
  @override
  final Bar dailyBar;
  @override
  final Quote latestQuote;
  @override
  final Trade latestTrade;
  @override
  final Bar minuteBar;
  @override
  final Bar prevDailyBar;

  @override
  String toString() {
    return 'StockInfo(name: $name, dailyBar: $dailyBar, latestQuote: $latestQuote, latestTrade: $latestTrade, minuteBar: $minuteBar, prevDailyBar: $prevDailyBar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dailyBar, dailyBar) ||
                other.dailyBar == dailyBar) &&
            (identical(other.latestQuote, latestQuote) ||
                other.latestQuote == latestQuote) &&
            (identical(other.latestTrade, latestTrade) ||
                other.latestTrade == latestTrade) &&
            (identical(other.minuteBar, minuteBar) ||
                other.minuteBar == minuteBar) &&
            (identical(other.prevDailyBar, prevDailyBar) ||
                other.prevDailyBar == prevDailyBar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, dailyBar, latestQuote,
      latestTrade, minuteBar, prevDailyBar);

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockInfoImplCopyWith<_$StockInfoImpl> get copyWith =>
      __$$StockInfoImplCopyWithImpl<_$StockInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockInfoImplToJson(
      this,
    );
  }
}

abstract class _StockInfo implements StockInfo {
  const factory _StockInfo(
      {required final String name,
      required final Bar dailyBar,
      required final Quote latestQuote,
      required final Trade latestTrade,
      required final Bar minuteBar,
      required final Bar prevDailyBar}) = _$StockInfoImpl;

  factory _StockInfo.fromJson(Map<String, dynamic> json) =
      _$StockInfoImpl.fromJson;

  @override
  String get name;
  @override
  Bar get dailyBar;
  @override
  Quote get latestQuote;
  @override
  Trade get latestTrade;
  @override
  Bar get minuteBar;
  @override
  Bar get prevDailyBar;

  /// Create a copy of StockInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockInfoImplCopyWith<_$StockInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bar _$BarFromJson(Map<String, dynamic> json) {
  return _Bar.fromJson(json);
}

/// @nodoc
mixin _$Bar {
  @JsonKey(name: 'c')
  double get close => throw _privateConstructorUsedError;
  @JsonKey(name: 'h')
  double get high => throw _privateConstructorUsedError;
  @JsonKey(name: 'l')
  double get low => throw _privateConstructorUsedError;
  @JsonKey(name: 'n')
  int get trades => throw _privateConstructorUsedError;
  @JsonKey(name: 'o')
  double get open => throw _privateConstructorUsedError;
  String get t => throw _privateConstructorUsedError;
  @JsonKey(name: 'v')
  int get volume => throw _privateConstructorUsedError;
  @JsonKey(name: 'vw')
  double get vwap => throw _privateConstructorUsedError;

  /// Serializes this Bar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BarCopyWith<Bar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarCopyWith<$Res> {
  factory $BarCopyWith(Bar value, $Res Function(Bar) then) =
      _$BarCopyWithImpl<$Res, Bar>;
  @useResult
  $Res call(
      {@JsonKey(name: 'c') double close,
      @JsonKey(name: 'h') double high,
      @JsonKey(name: 'l') double low,
      @JsonKey(name: 'n') int trades,
      @JsonKey(name: 'o') double open,
      String t,
      @JsonKey(name: 'v') int volume,
      @JsonKey(name: 'vw') double vwap});
}

/// @nodoc
class _$BarCopyWithImpl<$Res, $Val extends Bar> implements $BarCopyWith<$Res> {
  _$BarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? close = null,
    Object? high = null,
    Object? low = null,
    Object? trades = null,
    Object? open = null,
    Object? t = null,
    Object? volume = null,
    Object? vwap = null,
  }) {
    return _then(_value.copyWith(
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      trades: null == trades
          ? _value.trades
          : trades // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      vwap: null == vwap
          ? _value.vwap
          : vwap // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarImplCopyWith<$Res> implements $BarCopyWith<$Res> {
  factory _$$BarImplCopyWith(_$BarImpl value, $Res Function(_$BarImpl) then) =
      __$$BarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'c') double close,
      @JsonKey(name: 'h') double high,
      @JsonKey(name: 'l') double low,
      @JsonKey(name: 'n') int trades,
      @JsonKey(name: 'o') double open,
      String t,
      @JsonKey(name: 'v') int volume,
      @JsonKey(name: 'vw') double vwap});
}

/// @nodoc
class __$$BarImplCopyWithImpl<$Res> extends _$BarCopyWithImpl<$Res, _$BarImpl>
    implements _$$BarImplCopyWith<$Res> {
  __$$BarImplCopyWithImpl(_$BarImpl _value, $Res Function(_$BarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? close = null,
    Object? high = null,
    Object? low = null,
    Object? trades = null,
    Object? open = null,
    Object? t = null,
    Object? volume = null,
    Object? vwap = null,
  }) {
    return _then(_$BarImpl(
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      trades: null == trades
          ? _value.trades
          : trades // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
      vwap: null == vwap
          ? _value.vwap
          : vwap // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarImpl implements _Bar {
  const _$BarImpl(
      {@JsonKey(name: 'c') required this.close,
      @JsonKey(name: 'h') required this.high,
      @JsonKey(name: 'l') required this.low,
      @JsonKey(name: 'n') required this.trades,
      @JsonKey(name: 'o') required this.open,
      required this.t,
      @JsonKey(name: 'v') required this.volume,
      @JsonKey(name: 'vw') required this.vwap});

  factory _$BarImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarImplFromJson(json);

  @override
  @JsonKey(name: 'c')
  final double close;
  @override
  @JsonKey(name: 'h')
  final double high;
  @override
  @JsonKey(name: 'l')
  final double low;
  @override
  @JsonKey(name: 'n')
  final int trades;
  @override
  @JsonKey(name: 'o')
  final double open;
  @override
  final String t;
  @override
  @JsonKey(name: 'v')
  final int volume;
  @override
  @JsonKey(name: 'vw')
  final double vwap;

  @override
  String toString() {
    return 'Bar(close: $close, high: $high, low: $low, trades: $trades, open: $open, t: $t, volume: $volume, vwap: $vwap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarImpl &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.trades, trades) || other.trades == trades) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.vwap, vwap) || other.vwap == vwap));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, close, high, low, trades, open, t, volume, vwap);

  /// Create a copy of Bar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BarImplCopyWith<_$BarImpl> get copyWith =>
      __$$BarImplCopyWithImpl<_$BarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarImplToJson(
      this,
    );
  }
}

abstract class _Bar implements Bar {
  const factory _Bar(
      {@JsonKey(name: 'c') required final double close,
      @JsonKey(name: 'h') required final double high,
      @JsonKey(name: 'l') required final double low,
      @JsonKey(name: 'n') required final int trades,
      @JsonKey(name: 'o') required final double open,
      required final String t,
      @JsonKey(name: 'v') required final int volume,
      @JsonKey(name: 'vw') required final double vwap}) = _$BarImpl;

  factory _Bar.fromJson(Map<String, dynamic> json) = _$BarImpl.fromJson;

  @override
  @JsonKey(name: 'c')
  double get close;
  @override
  @JsonKey(name: 'h')
  double get high;
  @override
  @JsonKey(name: 'l')
  double get low;
  @override
  @JsonKey(name: 'n')
  int get trades;
  @override
  @JsonKey(name: 'o')
  double get open;
  @override
  String get t;
  @override
  @JsonKey(name: 'v')
  int get volume;
  @override
  @JsonKey(name: 'vw')
  double get vwap;

  /// Create a copy of Bar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarImplCopyWith<_$BarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
mixin _$Quote {
  @JsonKey(name: 'ap')
  double get askPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'as')
  int get askSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'ax')
  String get askExchange => throw _privateConstructorUsedError;
  @JsonKey(name: 'bp')
  double get bidPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bs')
  int get bidSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'bx')
  String get bidExchange => throw _privateConstructorUsedError;
  List<String> get c => throw _privateConstructorUsedError;
  String get t => throw _privateConstructorUsedError;
  String get z => throw _privateConstructorUsedError;

  /// Serializes this Quote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res, Quote>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ap') double askPrice,
      @JsonKey(name: 'as') int askSize,
      @JsonKey(name: 'ax') String askExchange,
      @JsonKey(name: 'bp') double bidPrice,
      @JsonKey(name: 'bs') int bidSize,
      @JsonKey(name: 'bx') String bidExchange,
      List<String> c,
      String t,
      String z});
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res, $Val extends Quote>
    implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Quote
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
    Object? c = null,
    Object? t = null,
    Object? z = null,
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
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as List<String>,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteImplCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$QuoteImplCopyWith(
          _$QuoteImpl value, $Res Function(_$QuoteImpl) then) =
      __$$QuoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ap') double askPrice,
      @JsonKey(name: 'as') int askSize,
      @JsonKey(name: 'ax') String askExchange,
      @JsonKey(name: 'bp') double bidPrice,
      @JsonKey(name: 'bs') int bidSize,
      @JsonKey(name: 'bx') String bidExchange,
      List<String> c,
      String t,
      String z});
}

/// @nodoc
class __$$QuoteImplCopyWithImpl<$Res>
    extends _$QuoteCopyWithImpl<$Res, _$QuoteImpl>
    implements _$$QuoteImplCopyWith<$Res> {
  __$$QuoteImplCopyWithImpl(
      _$QuoteImpl _value, $Res Function(_$QuoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Quote
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
    Object? c = null,
    Object? t = null,
    Object? z = null,
  }) {
    return _then(_$QuoteImpl(
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
      c: null == c
          ? _value._c
          : c // ignore: cast_nullable_to_non_nullable
              as List<String>,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteImpl implements _Quote {
  const _$QuoteImpl(
      {@JsonKey(name: 'ap') required this.askPrice,
      @JsonKey(name: 'as') required this.askSize,
      @JsonKey(name: 'ax') required this.askExchange,
      @JsonKey(name: 'bp') required this.bidPrice,
      @JsonKey(name: 'bs') required this.bidSize,
      @JsonKey(name: 'bx') required this.bidExchange,
      required final List<String> c,
      required this.t,
      required this.z})
      : _c = c;

  factory _$QuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteImplFromJson(json);

  @override
  @JsonKey(name: 'ap')
  final double askPrice;
  @override
  @JsonKey(name: 'as')
  final int askSize;
  @override
  @JsonKey(name: 'ax')
  final String askExchange;
  @override
  @JsonKey(name: 'bp')
  final double bidPrice;
  @override
  @JsonKey(name: 'bs')
  final int bidSize;
  @override
  @JsonKey(name: 'bx')
  final String bidExchange;
  final List<String> _c;
  @override
  List<String> get c {
    if (_c is EqualUnmodifiableListView) return _c;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_c);
  }

  @override
  final String t;
  @override
  final String z;

  @override
  String toString() {
    return 'Quote(askPrice: $askPrice, askSize: $askSize, askExchange: $askExchange, bidPrice: $bidPrice, bidSize: $bidSize, bidExchange: $bidExchange, c: $c, t: $t, z: $z)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteImpl &&
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
            const DeepCollectionEquality().equals(other._c, _c) &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.z, z) || other.z == z));
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
      const DeepCollectionEquality().hash(_c),
      t,
      z);

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      __$$QuoteImplCopyWithImpl<_$QuoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteImplToJson(
      this,
    );
  }
}

abstract class _Quote implements Quote {
  const factory _Quote(
      {@JsonKey(name: 'ap') required final double askPrice,
      @JsonKey(name: 'as') required final int askSize,
      @JsonKey(name: 'ax') required final String askExchange,
      @JsonKey(name: 'bp') required final double bidPrice,
      @JsonKey(name: 'bs') required final int bidSize,
      @JsonKey(name: 'bx') required final String bidExchange,
      required final List<String> c,
      required final String t,
      required final String z}) = _$QuoteImpl;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$QuoteImpl.fromJson;

  @override
  @JsonKey(name: 'ap')
  double get askPrice;
  @override
  @JsonKey(name: 'as')
  int get askSize;
  @override
  @JsonKey(name: 'ax')
  String get askExchange;
  @override
  @JsonKey(name: 'bp')
  double get bidPrice;
  @override
  @JsonKey(name: 'bs')
  int get bidSize;
  @override
  @JsonKey(name: 'bx')
  String get bidExchange;
  @override
  List<String> get c;
  @override
  String get t;
  @override
  String get z;

  /// Create a copy of Quote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuoteImplCopyWith<_$QuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Trade _$TradeFromJson(Map<String, dynamic> json) {
  return _Trade.fromJson(json);
}

/// @nodoc
mixin _$Trade {
  List<String> get c => throw _privateConstructorUsedError;
  int get i => throw _privateConstructorUsedError;
  @JsonKey(name: 'p')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 's')
  int get size => throw _privateConstructorUsedError;
  String get t => throw _privateConstructorUsedError;
  @JsonKey(name: 'x')
  String get exchange => throw _privateConstructorUsedError;
  String get z => throw _privateConstructorUsedError;

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
      {List<String> c,
      int i,
      @JsonKey(name: 'p') double price,
      @JsonKey(name: 's') int size,
      String t,
      @JsonKey(name: 'x') String exchange,
      String z});
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
    Object? i = null,
    Object? price = null,
    Object? size = null,
    Object? t = null,
    Object? exchange = null,
    Object? z = null,
  }) {
    return _then(_value.copyWith(
      c: null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as List<String>,
      i: null == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
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
      {List<String> c,
      int i,
      @JsonKey(name: 'p') double price,
      @JsonKey(name: 's') int size,
      String t,
      @JsonKey(name: 'x') String exchange,
      String z});
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
    Object? i = null,
    Object? price = null,
    Object? size = null,
    Object? t = null,
    Object? exchange = null,
    Object? z = null,
  }) {
    return _then(_$TradeImpl(
      c: null == c
          ? _value._c
          : c // ignore: cast_nullable_to_non_nullable
              as List<String>,
      i: null == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeImpl implements _Trade {
  const _$TradeImpl(
      {required final List<String> c,
      required this.i,
      @JsonKey(name: 'p') required this.price,
      @JsonKey(name: 's') required this.size,
      required this.t,
      @JsonKey(name: 'x') required this.exchange,
      required this.z})
      : _c = c;

  factory _$TradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeImplFromJson(json);

  final List<String> _c;
  @override
  List<String> get c {
    if (_c is EqualUnmodifiableListView) return _c;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_c);
  }

  @override
  final int i;
  @override
  @JsonKey(name: 'p')
  final double price;
  @override
  @JsonKey(name: 's')
  final int size;
  @override
  final String t;
  @override
  @JsonKey(name: 'x')
  final String exchange;
  @override
  final String z;

  @override
  String toString() {
    return 'Trade(c: $c, i: $i, price: $price, size: $size, t: $t, exchange: $exchange, z: $z)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeImpl &&
            const DeepCollectionEquality().equals(other._c, _c) &&
            (identical(other.i, i) || other.i == i) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_c), i, price, size, t, exchange, z);

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
      {required final List<String> c,
      required final int i,
      @JsonKey(name: 'p') required final double price,
      @JsonKey(name: 's') required final int size,
      required final String t,
      @JsonKey(name: 'x') required final String exchange,
      required final String z}) = _$TradeImpl;

  factory _Trade.fromJson(Map<String, dynamic> json) = _$TradeImpl.fromJson;

  @override
  List<String> get c;
  @override
  int get i;
  @override
  @JsonKey(name: 'p')
  double get price;
  @override
  @JsonKey(name: 's')
  int get size;
  @override
  String get t;
  @override
  @JsonKey(name: 'x')
  String get exchange;
  @override
  String get z;

  /// Create a copy of Trade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeImplCopyWith<_$TradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
