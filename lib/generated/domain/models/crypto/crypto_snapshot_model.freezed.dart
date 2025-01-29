// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/crypto/crypto_snapshot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoSnapshotModel _$CryptoSnapshotModelFromJson(Map<String, dynamic> json) {
  return _CryptoSnapshotModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoSnapshotModel {
  Map<String, MarketSnapshot> get snapshots =>
      throw _privateConstructorUsedError;

  /// Serializes this CryptoSnapshotModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoSnapshotModelCopyWith<CryptoSnapshotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoSnapshotModelCopyWith<$Res> {
  factory $CryptoSnapshotModelCopyWith(
          CryptoSnapshotModel value, $Res Function(CryptoSnapshotModel) then) =
      _$CryptoSnapshotModelCopyWithImpl<$Res, CryptoSnapshotModel>;
  @useResult
  $Res call({Map<String, MarketSnapshot> snapshots});
}

/// @nodoc
class _$CryptoSnapshotModelCopyWithImpl<$Res, $Val extends CryptoSnapshotModel>
    implements $CryptoSnapshotModelCopyWith<$Res> {
  _$CryptoSnapshotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapshots = null,
  }) {
    return _then(_value.copyWith(
      snapshots: null == snapshots
          ? _value.snapshots
          : snapshots // ignore: cast_nullable_to_non_nullable
              as Map<String, MarketSnapshot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoSnapshotModelImplCopyWith<$Res>
    implements $CryptoSnapshotModelCopyWith<$Res> {
  factory _$$CryptoSnapshotModelImplCopyWith(_$CryptoSnapshotModelImpl value,
          $Res Function(_$CryptoSnapshotModelImpl) then) =
      __$$CryptoSnapshotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, MarketSnapshot> snapshots});
}

/// @nodoc
class __$$CryptoSnapshotModelImplCopyWithImpl<$Res>
    extends _$CryptoSnapshotModelCopyWithImpl<$Res, _$CryptoSnapshotModelImpl>
    implements _$$CryptoSnapshotModelImplCopyWith<$Res> {
  __$$CryptoSnapshotModelImplCopyWithImpl(_$CryptoSnapshotModelImpl _value,
      $Res Function(_$CryptoSnapshotModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapshots = null,
  }) {
    return _then(_$CryptoSnapshotModelImpl(
      snapshots: null == snapshots
          ? _value._snapshots
          : snapshots // ignore: cast_nullable_to_non_nullable
              as Map<String, MarketSnapshot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoSnapshotModelImpl implements _CryptoSnapshotModel {
  const _$CryptoSnapshotModelImpl(
      {required final Map<String, MarketSnapshot> snapshots})
      : _snapshots = snapshots;

  factory _$CryptoSnapshotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoSnapshotModelImplFromJson(json);

  final Map<String, MarketSnapshot> _snapshots;
  @override
  Map<String, MarketSnapshot> get snapshots {
    if (_snapshots is EqualUnmodifiableMapView) return _snapshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_snapshots);
  }

  @override
  String toString() {
    return 'CryptoSnapshotModel(snapshots: $snapshots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoSnapshotModelImpl &&
            const DeepCollectionEquality()
                .equals(other._snapshots, _snapshots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_snapshots));

  /// Create a copy of CryptoSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoSnapshotModelImplCopyWith<_$CryptoSnapshotModelImpl> get copyWith =>
      __$$CryptoSnapshotModelImplCopyWithImpl<_$CryptoSnapshotModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoSnapshotModelImplToJson(
      this,
    );
  }
}

abstract class _CryptoSnapshotModel implements CryptoSnapshotModel {
  const factory _CryptoSnapshotModel(
          {required final Map<String, MarketSnapshot> snapshots}) =
      _$CryptoSnapshotModelImpl;

  factory _CryptoSnapshotModel.fromJson(Map<String, dynamic> json) =
      _$CryptoSnapshotModelImpl.fromJson;

  @override
  Map<String, MarketSnapshot> get snapshots;

  /// Create a copy of CryptoSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoSnapshotModelImplCopyWith<_$CryptoSnapshotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketSnapshot _$MarketSnapshotFromJson(Map<String, dynamic> json) {
  return _MarketSnapshot.fromJson(json);
}

/// @nodoc
mixin _$MarketSnapshot {
  @JsonKey(name: 'dailyBar')
  Bar get dailyBar => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestQuote')
  Quote get latestQuote => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestTrade')
  Trade get latestTrade => throw _privateConstructorUsedError;
  @JsonKey(name: 'minuteBar')
  Bar get minuteBar => throw _privateConstructorUsedError;
  @JsonKey(name: 'prevDailyBar')
  Bar get prevDailyBar => throw _privateConstructorUsedError;

  /// Serializes this MarketSnapshot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketSnapshotCopyWith<MarketSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketSnapshotCopyWith<$Res> {
  factory $MarketSnapshotCopyWith(
          MarketSnapshot value, $Res Function(MarketSnapshot) then) =
      _$MarketSnapshotCopyWithImpl<$Res, MarketSnapshot>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dailyBar') Bar dailyBar,
      @JsonKey(name: 'latestQuote') Quote latestQuote,
      @JsonKey(name: 'latestTrade') Trade latestTrade,
      @JsonKey(name: 'minuteBar') Bar minuteBar,
      @JsonKey(name: 'prevDailyBar') Bar prevDailyBar});

  $BarCopyWith<$Res> get dailyBar;
  $QuoteCopyWith<$Res> get latestQuote;
  $TradeCopyWith<$Res> get latestTrade;
  $BarCopyWith<$Res> get minuteBar;
  $BarCopyWith<$Res> get prevDailyBar;
}

/// @nodoc
class _$MarketSnapshotCopyWithImpl<$Res, $Val extends MarketSnapshot>
    implements $MarketSnapshotCopyWith<$Res> {
  _$MarketSnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyBar = null,
    Object? latestQuote = null,
    Object? latestTrade = null,
    Object? minuteBar = null,
    Object? prevDailyBar = null,
  }) {
    return _then(_value.copyWith(
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

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BarCopyWith<$Res> get dailyBar {
    return $BarCopyWith<$Res>(_value.dailyBar, (value) {
      return _then(_value.copyWith(dailyBar: value) as $Val);
    });
  }

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuoteCopyWith<$Res> get latestQuote {
    return $QuoteCopyWith<$Res>(_value.latestQuote, (value) {
      return _then(_value.copyWith(latestQuote: value) as $Val);
    });
  }

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TradeCopyWith<$Res> get latestTrade {
    return $TradeCopyWith<$Res>(_value.latestTrade, (value) {
      return _then(_value.copyWith(latestTrade: value) as $Val);
    });
  }

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BarCopyWith<$Res> get minuteBar {
    return $BarCopyWith<$Res>(_value.minuteBar, (value) {
      return _then(_value.copyWith(minuteBar: value) as $Val);
    });
  }

  /// Create a copy of MarketSnapshot
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
abstract class _$$MarketSnapshotImplCopyWith<$Res>
    implements $MarketSnapshotCopyWith<$Res> {
  factory _$$MarketSnapshotImplCopyWith(_$MarketSnapshotImpl value,
          $Res Function(_$MarketSnapshotImpl) then) =
      __$$MarketSnapshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dailyBar') Bar dailyBar,
      @JsonKey(name: 'latestQuote') Quote latestQuote,
      @JsonKey(name: 'latestTrade') Trade latestTrade,
      @JsonKey(name: 'minuteBar') Bar minuteBar,
      @JsonKey(name: 'prevDailyBar') Bar prevDailyBar});

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
class __$$MarketSnapshotImplCopyWithImpl<$Res>
    extends _$MarketSnapshotCopyWithImpl<$Res, _$MarketSnapshotImpl>
    implements _$$MarketSnapshotImplCopyWith<$Res> {
  __$$MarketSnapshotImplCopyWithImpl(
      _$MarketSnapshotImpl _value, $Res Function(_$MarketSnapshotImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyBar = null,
    Object? latestQuote = null,
    Object? latestTrade = null,
    Object? minuteBar = null,
    Object? prevDailyBar = null,
  }) {
    return _then(_$MarketSnapshotImpl(
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
class _$MarketSnapshotImpl implements _MarketSnapshot {
  const _$MarketSnapshotImpl(
      {@JsonKey(name: 'dailyBar') required this.dailyBar,
      @JsonKey(name: 'latestQuote') required this.latestQuote,
      @JsonKey(name: 'latestTrade') required this.latestTrade,
      @JsonKey(name: 'minuteBar') required this.minuteBar,
      @JsonKey(name: 'prevDailyBar') required this.prevDailyBar});

  factory _$MarketSnapshotImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketSnapshotImplFromJson(json);

  @override
  @JsonKey(name: 'dailyBar')
  final Bar dailyBar;
  @override
  @JsonKey(name: 'latestQuote')
  final Quote latestQuote;
  @override
  @JsonKey(name: 'latestTrade')
  final Trade latestTrade;
  @override
  @JsonKey(name: 'minuteBar')
  final Bar minuteBar;
  @override
  @JsonKey(name: 'prevDailyBar')
  final Bar prevDailyBar;

  @override
  String toString() {
    return 'MarketSnapshot(dailyBar: $dailyBar, latestQuote: $latestQuote, latestTrade: $latestTrade, minuteBar: $minuteBar, prevDailyBar: $prevDailyBar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketSnapshotImpl &&
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
  int get hashCode => Object.hash(
      runtimeType, dailyBar, latestQuote, latestTrade, minuteBar, prevDailyBar);

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketSnapshotImplCopyWith<_$MarketSnapshotImpl> get copyWith =>
      __$$MarketSnapshotImplCopyWithImpl<_$MarketSnapshotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketSnapshotImplToJson(
      this,
    );
  }
}

abstract class _MarketSnapshot implements MarketSnapshot {
  const factory _MarketSnapshot(
          {@JsonKey(name: 'dailyBar') required final Bar dailyBar,
          @JsonKey(name: 'latestQuote') required final Quote latestQuote,
          @JsonKey(name: 'latestTrade') required final Trade latestTrade,
          @JsonKey(name: 'minuteBar') required final Bar minuteBar,
          @JsonKey(name: 'prevDailyBar') required final Bar prevDailyBar}) =
      _$MarketSnapshotImpl;

  factory _MarketSnapshot.fromJson(Map<String, dynamic> json) =
      _$MarketSnapshotImpl.fromJson;

  @override
  @JsonKey(name: 'dailyBar')
  Bar get dailyBar;
  @override
  @JsonKey(name: 'latestQuote')
  Quote get latestQuote;
  @override
  @JsonKey(name: 'latestTrade')
  Trade get latestTrade;
  @override
  @JsonKey(name: 'minuteBar')
  Bar get minuteBar;
  @override
  @JsonKey(name: 'prevDailyBar')
  Bar get prevDailyBar;

  /// Create a copy of MarketSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketSnapshotImplCopyWith<_$MarketSnapshotImpl> get copyWith =>
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
  int get numberOfTrades => throw _privateConstructorUsedError;
  @JsonKey(name: 'o')
  double get open => throw _privateConstructorUsedError;
  @JsonKey(name: 't')
  DateTime get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'v')
  double get volume => throw _privateConstructorUsedError;
  @JsonKey(name: 'vw')
  double get volumeWeightedPrice => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'n') int numberOfTrades,
      @JsonKey(name: 'o') double open,
      @JsonKey(name: 't') DateTime timestamp,
      @JsonKey(name: 'v') double volume,
      @JsonKey(name: 'vw') double volumeWeightedPrice});
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
    Object? numberOfTrades = null,
    Object? open = null,
    Object? timestamp = null,
    Object? volume = null,
    Object? volumeWeightedPrice = null,
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
      numberOfTrades: null == numberOfTrades
          ? _value.numberOfTrades
          : numberOfTrades // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeWeightedPrice: null == volumeWeightedPrice
          ? _value.volumeWeightedPrice
          : volumeWeightedPrice // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'n') int numberOfTrades,
      @JsonKey(name: 'o') double open,
      @JsonKey(name: 't') DateTime timestamp,
      @JsonKey(name: 'v') double volume,
      @JsonKey(name: 'vw') double volumeWeightedPrice});
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
    Object? numberOfTrades = null,
    Object? open = null,
    Object? timestamp = null,
    Object? volume = null,
    Object? volumeWeightedPrice = null,
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
      numberOfTrades: null == numberOfTrades
          ? _value.numberOfTrades
          : numberOfTrades // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      volumeWeightedPrice: null == volumeWeightedPrice
          ? _value.volumeWeightedPrice
          : volumeWeightedPrice // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'n') required this.numberOfTrades,
      @JsonKey(name: 'o') required this.open,
      @JsonKey(name: 't') required this.timestamp,
      @JsonKey(name: 'v') required this.volume,
      @JsonKey(name: 'vw') required this.volumeWeightedPrice});

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
  final int numberOfTrades;
  @override
  @JsonKey(name: 'o')
  final double open;
  @override
  @JsonKey(name: 't')
  final DateTime timestamp;
  @override
  @JsonKey(name: 'v')
  final double volume;
  @override
  @JsonKey(name: 'vw')
  final double volumeWeightedPrice;

  @override
  String toString() {
    return 'Bar(close: $close, high: $high, low: $low, numberOfTrades: $numberOfTrades, open: $open, timestamp: $timestamp, volume: $volume, volumeWeightedPrice: $volumeWeightedPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarImpl &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.numberOfTrades, numberOfTrades) ||
                other.numberOfTrades == numberOfTrades) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.volumeWeightedPrice, volumeWeightedPrice) ||
                other.volumeWeightedPrice == volumeWeightedPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, close, high, low, numberOfTrades,
      open, timestamp, volume, volumeWeightedPrice);

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
          @JsonKey(name: 'n') required final int numberOfTrades,
          @JsonKey(name: 'o') required final double open,
          @JsonKey(name: 't') required final DateTime timestamp,
          @JsonKey(name: 'v') required final double volume,
          @JsonKey(name: 'vw') required final double volumeWeightedPrice}) =
      _$BarImpl;

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
  int get numberOfTrades;
  @override
  @JsonKey(name: 'o')
  double get open;
  @override
  @JsonKey(name: 't')
  DateTime get timestamp;
  @override
  @JsonKey(name: 'v')
  double get volume;
  @override
  @JsonKey(name: 'vw')
  double get volumeWeightedPrice;

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
  double get askSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'bp')
  double get bidPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bs')
  double get bidSize => throw _privateConstructorUsedError;
  @JsonKey(name: 't')
  DateTime get timestamp => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'as') double askSize,
      @JsonKey(name: 'bp') double bidPrice,
      @JsonKey(name: 'bs') double bidSize,
      @JsonKey(name: 't') DateTime timestamp});
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
abstract class _$$QuoteImplCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$QuoteImplCopyWith(
          _$QuoteImpl value, $Res Function(_$QuoteImpl) then) =
      __$$QuoteImplCopyWithImpl<$Res>;
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
    Object? bidPrice = null,
    Object? bidSize = null,
    Object? timestamp = null,
  }) {
    return _then(_$QuoteImpl(
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
class _$QuoteImpl implements _Quote {
  const _$QuoteImpl(
      {@JsonKey(name: 'ap') required this.askPrice,
      @JsonKey(name: 'as') required this.askSize,
      @JsonKey(name: 'bp') required this.bidPrice,
      @JsonKey(name: 'bs') required this.bidSize,
      @JsonKey(name: 't') required this.timestamp});

  factory _$QuoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteImplFromJson(json);

  @override
  @JsonKey(name: 'ap')
  final double askPrice;
  @override
  @JsonKey(name: 'as')
  final double askSize;
  @override
  @JsonKey(name: 'bp')
  final double bidPrice;
  @override
  @JsonKey(name: 'bs')
  final double bidSize;
  @override
  @JsonKey(name: 't')
  final DateTime timestamp;

  @override
  String toString() {
    return 'Quote(askPrice: $askPrice, askSize: $askSize, bidPrice: $bidPrice, bidSize: $bidSize, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteImpl &&
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
      @JsonKey(name: 'as') required final double askSize,
      @JsonKey(name: 'bp') required final double bidPrice,
      @JsonKey(name: 'bs') required final double bidSize,
      @JsonKey(name: 't') required final DateTime timestamp}) = _$QuoteImpl;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$QuoteImpl.fromJson;

  @override
  @JsonKey(name: 'ap')
  double get askPrice;
  @override
  @JsonKey(name: 'as')
  double get askSize;
  @override
  @JsonKey(name: 'bp')
  double get bidPrice;
  @override
  @JsonKey(name: 'bs')
  double get bidSize;
  @override
  @JsonKey(name: 't')
  DateTime get timestamp;

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
