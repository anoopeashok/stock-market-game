// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/economic_indicators/retail_sales_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RetailSalesModel _$RetailSalesModelFromJson(Map<String, dynamic> json) {
  return _RetailSalesModel.fromJson(json);
}

/// @nodoc
mixin _$RetailSalesModel {
  String get name => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _limitDataItems)
  List<RetailSalesData> get data => throw _privateConstructorUsedError;

  /// Serializes this RetailSalesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetailSalesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetailSalesModelCopyWith<RetailSalesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetailSalesModelCopyWith<$Res> {
  factory $RetailSalesModelCopyWith(
          RetailSalesModel value, $Res Function(RetailSalesModel) then) =
      _$RetailSalesModelCopyWithImpl<$Res, RetailSalesModel>;
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<RetailSalesData> data});
}

/// @nodoc
class _$RetailSalesModelCopyWithImpl<$Res, $Val extends RetailSalesModel>
    implements $RetailSalesModelCopyWith<$Res> {
  _$RetailSalesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetailSalesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RetailSalesData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetailSalesModelImplCopyWith<$Res>
    implements $RetailSalesModelCopyWith<$Res> {
  factory _$$RetailSalesModelImplCopyWith(_$RetailSalesModelImpl value,
          $Res Function(_$RetailSalesModelImpl) then) =
      __$$RetailSalesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<RetailSalesData> data});
}

/// @nodoc
class __$$RetailSalesModelImplCopyWithImpl<$Res>
    extends _$RetailSalesModelCopyWithImpl<$Res, _$RetailSalesModelImpl>
    implements _$$RetailSalesModelImplCopyWith<$Res> {
  __$$RetailSalesModelImplCopyWithImpl(_$RetailSalesModelImpl _value,
      $Res Function(_$RetailSalesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetailSalesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_$RetailSalesModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RetailSalesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetailSalesModelImpl implements _RetailSalesModel {
  const _$RetailSalesModelImpl(
      {required this.name,
      required this.interval,
      required this.unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<RetailSalesData> data})
      : _data = data;

  factory _$RetailSalesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetailSalesModelImplFromJson(json);

  @override
  final String name;
  @override
  final String interval;
  @override
  final String unit;
  final List<RetailSalesData> _data;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<RetailSalesData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RetailSalesModel(name: $name, interval: $interval, unit: $unit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetailSalesModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, interval, unit,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of RetailSalesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetailSalesModelImplCopyWith<_$RetailSalesModelImpl> get copyWith =>
      __$$RetailSalesModelImplCopyWithImpl<_$RetailSalesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetailSalesModelImplToJson(
      this,
    );
  }
}

abstract class _RetailSalesModel implements RetailSalesModel {
  const factory _RetailSalesModel(
      {required final String name,
      required final String interval,
      required final String unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<RetailSalesData> data}) = _$RetailSalesModelImpl;

  factory _RetailSalesModel.fromJson(Map<String, dynamic> json) =
      _$RetailSalesModelImpl.fromJson;

  @override
  String get name;
  @override
  String get interval;
  @override
  String get unit;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<RetailSalesData> get data;

  /// Create a copy of RetailSalesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetailSalesModelImplCopyWith<_$RetailSalesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetailSalesData _$RetailSalesDataFromJson(Map<String, dynamic> json) {
  return _RetailSalesData.fromJson(json);
}

/// @nodoc
mixin _$RetailSalesData {
  DateTime get date => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this RetailSalesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetailSalesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetailSalesDataCopyWith<RetailSalesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetailSalesDataCopyWith<$Res> {
  factory $RetailSalesDataCopyWith(
          RetailSalesData value, $Res Function(RetailSalesData) then) =
      _$RetailSalesDataCopyWithImpl<$Res, RetailSalesData>;
  @useResult
  $Res call({DateTime date, String value});
}

/// @nodoc
class _$RetailSalesDataCopyWithImpl<$Res, $Val extends RetailSalesData>
    implements $RetailSalesDataCopyWith<$Res> {
  _$RetailSalesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetailSalesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetailSalesDataImplCopyWith<$Res>
    implements $RetailSalesDataCopyWith<$Res> {
  factory _$$RetailSalesDataImplCopyWith(_$RetailSalesDataImpl value,
          $Res Function(_$RetailSalesDataImpl) then) =
      __$$RetailSalesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String value});
}

/// @nodoc
class __$$RetailSalesDataImplCopyWithImpl<$Res>
    extends _$RetailSalesDataCopyWithImpl<$Res, _$RetailSalesDataImpl>
    implements _$$RetailSalesDataImplCopyWith<$Res> {
  __$$RetailSalesDataImplCopyWithImpl(
      _$RetailSalesDataImpl _value, $Res Function(_$RetailSalesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetailSalesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$RetailSalesDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetailSalesDataImpl implements _RetailSalesData {
  const _$RetailSalesDataImpl({required this.date, required this.value});

  factory _$RetailSalesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetailSalesDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String value;

  @override
  String toString() {
    return 'RetailSalesData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetailSalesDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of RetailSalesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetailSalesDataImplCopyWith<_$RetailSalesDataImpl> get copyWith =>
      __$$RetailSalesDataImplCopyWithImpl<_$RetailSalesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetailSalesDataImplToJson(
      this,
    );
  }
}

abstract class _RetailSalesData implements RetailSalesData {
  const factory _RetailSalesData(
      {required final DateTime date,
      required final String value}) = _$RetailSalesDataImpl;

  factory _RetailSalesData.fromJson(Map<String, dynamic> json) =
      _$RetailSalesDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get value;

  /// Create a copy of RetailSalesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetailSalesDataImplCopyWith<_$RetailSalesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
