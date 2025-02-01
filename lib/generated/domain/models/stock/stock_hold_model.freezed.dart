// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/stock/stock_hold_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockHold _$StockHoldFromJson(Map<String, dynamic> json) {
  return _StockHold.fromJson(json);
}

/// @nodoc
mixin _$StockHold {
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get numberOfShares => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this StockHold to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockHold
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockHoldCopyWith<StockHold> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockHoldCopyWith<$Res> {
  factory $StockHoldCopyWith(StockHold value, $Res Function(StockHold) then) =
      _$StockHoldCopyWithImpl<$Res, StockHold>;
  @useResult
  $Res call(
      {String name,
      String symbol,
      double price,
      double numberOfShares,
      double totalPrice,
      DateTime date});
}

/// @nodoc
class _$StockHoldCopyWithImpl<$Res, $Val extends StockHold>
    implements $StockHoldCopyWith<$Res> {
  _$StockHoldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockHold
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? price = null,
    Object? numberOfShares = null,
    Object? totalPrice = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfShares: null == numberOfShares
          ? _value.numberOfShares
          : numberOfShares // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockHoldImplCopyWith<$Res>
    implements $StockHoldCopyWith<$Res> {
  factory _$$StockHoldImplCopyWith(
          _$StockHoldImpl value, $Res Function(_$StockHoldImpl) then) =
      __$$StockHoldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String symbol,
      double price,
      double numberOfShares,
      double totalPrice,
      DateTime date});
}

/// @nodoc
class __$$StockHoldImplCopyWithImpl<$Res>
    extends _$StockHoldCopyWithImpl<$Res, _$StockHoldImpl>
    implements _$$StockHoldImplCopyWith<$Res> {
  __$$StockHoldImplCopyWithImpl(
      _$StockHoldImpl _value, $Res Function(_$StockHoldImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockHold
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? symbol = null,
    Object? price = null,
    Object? numberOfShares = null,
    Object? totalPrice = null,
    Object? date = null,
  }) {
    return _then(_$StockHoldImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfShares: null == numberOfShares
          ? _value.numberOfShares
          : numberOfShares // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockHoldImpl implements _StockHold {
  _$StockHoldImpl(
      {required this.name,
      required this.symbol,
      required this.price,
      required this.numberOfShares,
      required this.totalPrice,
      required this.date});

  factory _$StockHoldImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockHoldImplFromJson(json);

  @override
  final String name;
  @override
  final String symbol;
  @override
  final double price;
  @override
  final double numberOfShares;
  @override
  final double totalPrice;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'StockHold(name: $name, symbol: $symbol, price: $price, numberOfShares: $numberOfShares, totalPrice: $totalPrice, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockHoldImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.numberOfShares, numberOfShares) ||
                other.numberOfShares == numberOfShares) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, symbol, price, numberOfShares, totalPrice, date);

  /// Create a copy of StockHold
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockHoldImplCopyWith<_$StockHoldImpl> get copyWith =>
      __$$StockHoldImplCopyWithImpl<_$StockHoldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockHoldImplToJson(
      this,
    );
  }
}

abstract class _StockHold implements StockHold {
  factory _StockHold(
      {required final String name,
      required final String symbol,
      required final double price,
      required final double numberOfShares,
      required final double totalPrice,
      required final DateTime date}) = _$StockHoldImpl;

  factory _StockHold.fromJson(Map<String, dynamic> json) =
      _$StockHoldImpl.fromJson;

  @override
  String get name;
  @override
  String get symbol;
  @override
  double get price;
  @override
  double get numberOfShares;
  @override
  double get totalPrice;
  @override
  DateTime get date;

  /// Create a copy of StockHold
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockHoldImplCopyWith<_$StockHoldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
