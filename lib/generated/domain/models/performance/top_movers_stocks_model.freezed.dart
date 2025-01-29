// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/performance/top_movers_stocks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopMarketMoversModel _$TopMarketMoversModelFromJson(Map<String, dynamic> json) {
  return _TopMarketMoversModel.fromJson(json);
}

/// @nodoc
mixin _$TopMarketMoversModel {
  @JsonKey(name: "last_updated")
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  List<TopMarketMoverItemModel> get gainers =>
      throw _privateConstructorUsedError;
  List<TopMarketMoverItemModel> get losers =>
      throw _privateConstructorUsedError;

  /// Serializes this TopMarketMoversModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopMarketMoversModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopMarketMoversModelCopyWith<TopMarketMoversModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopMarketMoversModelCopyWith<$Res> {
  factory $TopMarketMoversModelCopyWith(TopMarketMoversModel value,
          $Res Function(TopMarketMoversModel) then) =
      _$TopMarketMoversModelCopyWithImpl<$Res, TopMarketMoversModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "last_updated") DateTime lastUpdated,
      List<TopMarketMoverItemModel> gainers,
      List<TopMarketMoverItemModel> losers});
}

/// @nodoc
class _$TopMarketMoversModelCopyWithImpl<$Res,
        $Val extends TopMarketMoversModel>
    implements $TopMarketMoversModelCopyWith<$Res> {
  _$TopMarketMoversModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopMarketMoversModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? gainers = null,
    Object? losers = null,
  }) {
    return _then(_value.copyWith(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gainers: null == gainers
          ? _value.gainers
          : gainers // ignore: cast_nullable_to_non_nullable
              as List<TopMarketMoverItemModel>,
      losers: null == losers
          ? _value.losers
          : losers // ignore: cast_nullable_to_non_nullable
              as List<TopMarketMoverItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopMarketMoversModelImplCopyWith<$Res>
    implements $TopMarketMoversModelCopyWith<$Res> {
  factory _$$TopMarketMoversModelImplCopyWith(_$TopMarketMoversModelImpl value,
          $Res Function(_$TopMarketMoversModelImpl) then) =
      __$$TopMarketMoversModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "last_updated") DateTime lastUpdated,
      List<TopMarketMoverItemModel> gainers,
      List<TopMarketMoverItemModel> losers});
}

/// @nodoc
class __$$TopMarketMoversModelImplCopyWithImpl<$Res>
    extends _$TopMarketMoversModelCopyWithImpl<$Res, _$TopMarketMoversModelImpl>
    implements _$$TopMarketMoversModelImplCopyWith<$Res> {
  __$$TopMarketMoversModelImplCopyWithImpl(_$TopMarketMoversModelImpl _value,
      $Res Function(_$TopMarketMoversModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopMarketMoversModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdated = null,
    Object? gainers = null,
    Object? losers = null,
  }) {
    return _then(_$TopMarketMoversModelImpl(
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gainers: null == gainers
          ? _value._gainers
          : gainers // ignore: cast_nullable_to_non_nullable
              as List<TopMarketMoverItemModel>,
      losers: null == losers
          ? _value._losers
          : losers // ignore: cast_nullable_to_non_nullable
              as List<TopMarketMoverItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopMarketMoversModelImpl implements _TopMarketMoversModel {
  const _$TopMarketMoversModelImpl(
      {@JsonKey(name: "last_updated") required this.lastUpdated,
      required final List<TopMarketMoverItemModel> gainers,
      required final List<TopMarketMoverItemModel> losers})
      : _gainers = gainers,
        _losers = losers;

  factory _$TopMarketMoversModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopMarketMoversModelImplFromJson(json);

  @override
  @JsonKey(name: "last_updated")
  final DateTime lastUpdated;
  final List<TopMarketMoverItemModel> _gainers;
  @override
  List<TopMarketMoverItemModel> get gainers {
    if (_gainers is EqualUnmodifiableListView) return _gainers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gainers);
  }

  final List<TopMarketMoverItemModel> _losers;
  @override
  List<TopMarketMoverItemModel> get losers {
    if (_losers is EqualUnmodifiableListView) return _losers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_losers);
  }

  @override
  String toString() {
    return 'TopMarketMoversModel(lastUpdated: $lastUpdated, gainers: $gainers, losers: $losers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopMarketMoversModelImpl &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality().equals(other._gainers, _gainers) &&
            const DeepCollectionEquality().equals(other._losers, _losers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastUpdated,
      const DeepCollectionEquality().hash(_gainers),
      const DeepCollectionEquality().hash(_losers));

  /// Create a copy of TopMarketMoversModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopMarketMoversModelImplCopyWith<_$TopMarketMoversModelImpl>
      get copyWith =>
          __$$TopMarketMoversModelImplCopyWithImpl<_$TopMarketMoversModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopMarketMoversModelImplToJson(
      this,
    );
  }
}

abstract class _TopMarketMoversModel implements TopMarketMoversModel {
  const factory _TopMarketMoversModel(
          {@JsonKey(name: "last_updated") required final DateTime lastUpdated,
          required final List<TopMarketMoverItemModel> gainers,
          required final List<TopMarketMoverItemModel> losers}) =
      _$TopMarketMoversModelImpl;

  factory _TopMarketMoversModel.fromJson(Map<String, dynamic> json) =
      _$TopMarketMoversModelImpl.fromJson;

  @override
  @JsonKey(name: "last_updated")
  DateTime get lastUpdated;
  @override
  List<TopMarketMoverItemModel> get gainers;
  @override
  List<TopMarketMoverItemModel> get losers;

  /// Create a copy of TopMarketMoversModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopMarketMoversModelImplCopyWith<_$TopMarketMoversModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopMarketMoverItemModel _$TopMarketMoverItemModelFromJson(
    Map<String, dynamic> json) {
  return _TopMarketMoverItemModel.fromJson(json);
}

/// @nodoc
mixin _$TopMarketMoverItemModel {
  double get change => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: "percent_change")
  double get percentagechange => throw _privateConstructorUsedError;

  /// Serializes this TopMarketMoverItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopMarketMoverItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopMarketMoverItemModelCopyWith<TopMarketMoverItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopMarketMoverItemModelCopyWith<$Res> {
  factory $TopMarketMoverItemModelCopyWith(TopMarketMoverItemModel value,
          $Res Function(TopMarketMoverItemModel) then) =
      _$TopMarketMoverItemModelCopyWithImpl<$Res, TopMarketMoverItemModel>;
  @useResult
  $Res call(
      {double change,
      double price,
      String symbol,
      @JsonKey(name: "percent_change") double percentagechange});
}

/// @nodoc
class _$TopMarketMoverItemModelCopyWithImpl<$Res,
        $Val extends TopMarketMoverItemModel>
    implements $TopMarketMoverItemModelCopyWith<$Res> {
  _$TopMarketMoverItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopMarketMoverItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? change = null,
    Object? price = null,
    Object? symbol = null,
    Object? percentagechange = null,
  }) {
    return _then(_value.copyWith(
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      percentagechange: null == percentagechange
          ? _value.percentagechange
          : percentagechange // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopMarketMoverItemModelImplCopyWith<$Res>
    implements $TopMarketMoverItemModelCopyWith<$Res> {
  factory _$$TopMarketMoverItemModelImplCopyWith(
          _$TopMarketMoverItemModelImpl value,
          $Res Function(_$TopMarketMoverItemModelImpl) then) =
      __$$TopMarketMoverItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double change,
      double price,
      String symbol,
      @JsonKey(name: "percent_change") double percentagechange});
}

/// @nodoc
class __$$TopMarketMoverItemModelImplCopyWithImpl<$Res>
    extends _$TopMarketMoverItemModelCopyWithImpl<$Res,
        _$TopMarketMoverItemModelImpl>
    implements _$$TopMarketMoverItemModelImplCopyWith<$Res> {
  __$$TopMarketMoverItemModelImplCopyWithImpl(
      _$TopMarketMoverItemModelImpl _value,
      $Res Function(_$TopMarketMoverItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopMarketMoverItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? change = null,
    Object? price = null,
    Object? symbol = null,
    Object? percentagechange = null,
  }) {
    return _then(_$TopMarketMoverItemModelImpl(
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      percentagechange: null == percentagechange
          ? _value.percentagechange
          : percentagechange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopMarketMoverItemModelImpl implements _TopMarketMoverItemModel {
  const _$TopMarketMoverItemModelImpl(
      {required this.change,
      required this.price,
      required this.symbol,
      @JsonKey(name: "percent_change") required this.percentagechange});

  factory _$TopMarketMoverItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopMarketMoverItemModelImplFromJson(json);

  @override
  final double change;
  @override
  final double price;
  @override
  final String symbol;
  @override
  @JsonKey(name: "percent_change")
  final double percentagechange;

  @override
  String toString() {
    return 'TopMarketMoverItemModel(change: $change, price: $price, symbol: $symbol, percentagechange: $percentagechange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopMarketMoverItemModelImpl &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.percentagechange, percentagechange) ||
                other.percentagechange == percentagechange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, change, price, symbol, percentagechange);

  /// Create a copy of TopMarketMoverItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopMarketMoverItemModelImplCopyWith<_$TopMarketMoverItemModelImpl>
      get copyWith => __$$TopMarketMoverItemModelImplCopyWithImpl<
          _$TopMarketMoverItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopMarketMoverItemModelImplToJson(
      this,
    );
  }
}

abstract class _TopMarketMoverItemModel implements TopMarketMoverItemModel {
  const factory _TopMarketMoverItemModel(
      {required final double change,
      required final double price,
      required final String symbol,
      @JsonKey(name: "percent_change")
      required final double percentagechange}) = _$TopMarketMoverItemModelImpl;

  factory _TopMarketMoverItemModel.fromJson(Map<String, dynamic> json) =
      _$TopMarketMoverItemModelImpl.fromJson;

  @override
  double get change;
  @override
  double get price;
  @override
  String get symbol;
  @override
  @JsonKey(name: "percent_change")
  double get percentagechange;

  /// Create a copy of TopMarketMoverItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopMarketMoverItemModelImplCopyWith<_$TopMarketMoverItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
