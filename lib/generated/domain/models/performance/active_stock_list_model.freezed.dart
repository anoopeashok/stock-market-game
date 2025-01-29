// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/performance/active_stock_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActiveStockListModel _$ActiveStockListModelFromJson(Map<String, dynamic> json) {
  return _ActiveStockListModel.fromJson(json);
}

/// @nodoc
mixin _$ActiveStockListModel {
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'most_actives')
  List<ActiveStockItem> get stockList => throw _privateConstructorUsedError;

  /// Serializes this ActiveStockListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveStockListModelCopyWith<ActiveStockListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveStockListModelCopyWith<$Res> {
  factory $ActiveStockListModelCopyWith(ActiveStockListModel value,
          $Res Function(ActiveStockListModel) then) =
      _$ActiveStockListModelCopyWithImpl<$Res, ActiveStockListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated') DateTime lastUpdated,
      @JsonKey(name: 'most_actives') List<ActiveStockItem> stockList});
}

/// @nodoc
class _$ActiveStockListModelCopyWithImpl<$Res,
        $Val extends ActiveStockListModel>
    implements $ActiveStockListModelCopyWith<$Res> {
  _$ActiveStockListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? stockList = null,
  }) {
    return _then(_value.copyWith(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stockList: null == stockList
          ? _value.stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<ActiveStockItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveStockListModelImplCopyWith<$Res>
    implements $ActiveStockListModelCopyWith<$Res> {
  factory _$$ActiveStockListModelImplCopyWith(_$ActiveStockListModelImpl value,
          $Res Function(_$ActiveStockListModelImpl) then) =
      __$$ActiveStockListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_updated') DateTime lastUpdated,
      @JsonKey(name: 'most_actives') List<ActiveStockItem> stockList});
}

/// @nodoc
class __$$ActiveStockListModelImplCopyWithImpl<$Res>
    extends _$ActiveStockListModelCopyWithImpl<$Res, _$ActiveStockListModelImpl>
    implements _$$ActiveStockListModelImplCopyWith<$Res> {
  __$$ActiveStockListModelImplCopyWithImpl(_$ActiveStockListModelImpl _value,
      $Res Function(_$ActiveStockListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? stockList = null,
  }) {
    return _then(_$ActiveStockListModelImpl(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stockList: null == stockList
          ? _value._stockList
          : stockList // ignore: cast_nullable_to_non_nullable
              as List<ActiveStockItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveStockListModelImpl implements _ActiveStockListModel {
  const _$ActiveStockListModelImpl(
      {@JsonKey(name: 'last_updated') required this.lastUpdated,
      @JsonKey(name: 'most_actives')
      required final List<ActiveStockItem> stockList})
      : _stockList = stockList;

  factory _$ActiveStockListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveStockListModelImplFromJson(json);

  @override
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
  final List<ActiveStockItem> _stockList;
  @override
  @JsonKey(name: 'most_actives')
  List<ActiveStockItem> get stockList {
    if (_stockList is EqualUnmodifiableListView) return _stockList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockList);
  }

  @override
  String toString() {
    return 'ActiveStockListModel(lastUpdated: $lastUpdated, stockList: $stockList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveStockListModelImpl &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._stockList, _stockList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lastUpdated,
      const DeepCollectionEquality().hash(_stockList));

  /// Create a copy of ActiveStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveStockListModelImplCopyWith<_$ActiveStockListModelImpl>
      get copyWith =>
          __$$ActiveStockListModelImplCopyWithImpl<_$ActiveStockListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveStockListModelImplToJson(
      this,
    );
  }
}

abstract class _ActiveStockListModel implements ActiveStockListModel {
  const factory _ActiveStockListModel(
          {@JsonKey(name: 'last_updated') required final DateTime lastUpdated,
          @JsonKey(name: 'most_actives')
          required final List<ActiveStockItem> stockList}) =
      _$ActiveStockListModelImpl;

  factory _ActiveStockListModel.fromJson(Map<String, dynamic> json) =
      _$ActiveStockListModelImpl.fromJson;

  @override
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'most_actives')
  List<ActiveStockItem> get stockList;

  /// Create a copy of ActiveStockListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveStockListModelImplCopyWith<_$ActiveStockListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActiveStockItem _$ActiveStockItemFromJson(Map<String, dynamic> json) {
  return _ActiveStockItem.fromJson(json);
}

/// @nodoc
mixin _$ActiveStockItem {
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'trade_count')
  int get tradeCount => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError;

  /// Serializes this ActiveStockItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveStockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveStockItemCopyWith<ActiveStockItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveStockItemCopyWith<$Res> {
  factory $ActiveStockItemCopyWith(
          ActiveStockItem value, $Res Function(ActiveStockItem) then) =
      _$ActiveStockItemCopyWithImpl<$Res, ActiveStockItem>;
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(name: 'trade_count') int tradeCount,
      int volume});
}

/// @nodoc
class _$ActiveStockItemCopyWithImpl<$Res, $Val extends ActiveStockItem>
    implements $ActiveStockItemCopyWith<$Res> {
  _$ActiveStockItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveStockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? tradeCount = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      tradeCount: null == tradeCount
          ? _value.tradeCount
          : tradeCount // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveStockItemImplCopyWith<$Res>
    implements $ActiveStockItemCopyWith<$Res> {
  factory _$$ActiveStockItemImplCopyWith(_$ActiveStockItemImpl value,
          $Res Function(_$ActiveStockItemImpl) then) =
      __$$ActiveStockItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(name: 'trade_count') int tradeCount,
      int volume});
}

/// @nodoc
class __$$ActiveStockItemImplCopyWithImpl<$Res>
    extends _$ActiveStockItemCopyWithImpl<$Res, _$ActiveStockItemImpl>
    implements _$$ActiveStockItemImplCopyWith<$Res> {
  __$$ActiveStockItemImplCopyWithImpl(
      _$ActiveStockItemImpl _value, $Res Function(_$ActiveStockItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveStockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? tradeCount = null,
    Object? volume = null,
  }) {
    return _then(_$ActiveStockItemImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      tradeCount: null == tradeCount
          ? _value.tradeCount
          : tradeCount // ignore: cast_nullable_to_non_nullable
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveStockItemImpl implements _ActiveStockItem {
  const _$ActiveStockItemImpl(
      {required this.symbol,
      @JsonKey(name: 'trade_count') required this.tradeCount,
      required this.volume});

  factory _$ActiveStockItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveStockItemImplFromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(name: 'trade_count')
  final int tradeCount;
  @override
  final int volume;

  @override
  String toString() {
    return 'ActiveStockItem(symbol: $symbol, tradeCount: $tradeCount, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveStockItemImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.tradeCount, tradeCount) ||
                other.tradeCount == tradeCount) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, tradeCount, volume);

  /// Create a copy of ActiveStockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveStockItemImplCopyWith<_$ActiveStockItemImpl> get copyWith =>
      __$$ActiveStockItemImplCopyWithImpl<_$ActiveStockItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveStockItemImplToJson(
      this,
    );
  }
}

abstract class _ActiveStockItem implements ActiveStockItem {
  const factory _ActiveStockItem(
      {required final String symbol,
      @JsonKey(name: 'trade_count') required final int tradeCount,
      required final int volume}) = _$ActiveStockItemImpl;

  factory _ActiveStockItem.fromJson(Map<String, dynamic> json) =
      _$ActiveStockItemImpl.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(name: 'trade_count')
  int get tradeCount;
  @override
  int get volume;

  /// Create a copy of ActiveStockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveStockItemImplCopyWith<_$ActiveStockItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
