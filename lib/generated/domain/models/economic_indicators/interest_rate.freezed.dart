// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/economic_indicators/interest_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FederalFundsRateModel _$FederalFundsRateModelFromJson(
    Map<String, dynamic> json) {
  return _FederalFundsRateModel.fromJson(json);
}

/// @nodoc
mixin _$FederalFundsRateModel {
  String get name => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  List<FederalFundsRateDataPoint> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this FederalFundsRateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FederalFundsRateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FederalFundsRateModelCopyWith<FederalFundsRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FederalFundsRateModelCopyWith<$Res> {
  factory $FederalFundsRateModelCopyWith(FederalFundsRateModel value,
          $Res Function(FederalFundsRateModel) then) =
      _$FederalFundsRateModelCopyWithImpl<$Res, FederalFundsRateModel>;
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      List<FederalFundsRateDataPoint> data});
}

/// @nodoc
class _$FederalFundsRateModelCopyWithImpl<$Res,
        $Val extends FederalFundsRateModel>
    implements $FederalFundsRateModelCopyWith<$Res> {
  _$FederalFundsRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FederalFundsRateModel
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
              as List<FederalFundsRateDataPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FederalFundsRateModelImplCopyWith<$Res>
    implements $FederalFundsRateModelCopyWith<$Res> {
  factory _$$FederalFundsRateModelImplCopyWith(
          _$FederalFundsRateModelImpl value,
          $Res Function(_$FederalFundsRateModelImpl) then) =
      __$$FederalFundsRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      List<FederalFundsRateDataPoint> data});
}

/// @nodoc
class __$$FederalFundsRateModelImplCopyWithImpl<$Res>
    extends _$FederalFundsRateModelCopyWithImpl<$Res,
        _$FederalFundsRateModelImpl>
    implements _$$FederalFundsRateModelImplCopyWith<$Res> {
  __$$FederalFundsRateModelImplCopyWithImpl(_$FederalFundsRateModelImpl _value,
      $Res Function(_$FederalFundsRateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FederalFundsRateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_$FederalFundsRateModelImpl(
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
              as List<FederalFundsRateDataPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FederalFundsRateModelImpl implements _FederalFundsRateModel {
  const _$FederalFundsRateModelImpl(
      {required this.name,
      required this.interval,
      required this.unit,
      required final List<FederalFundsRateDataPoint> data})
      : _data = data;

  factory _$FederalFundsRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FederalFundsRateModelImplFromJson(json);

  @override
  final String name;
  @override
  final String interval;
  @override
  final String unit;
  final List<FederalFundsRateDataPoint> _data;
  @override
  List<FederalFundsRateDataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FederalFundsRateModel(name: $name, interval: $interval, unit: $unit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FederalFundsRateModelImpl &&
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

  /// Create a copy of FederalFundsRateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FederalFundsRateModelImplCopyWith<_$FederalFundsRateModelImpl>
      get copyWith => __$$FederalFundsRateModelImplCopyWithImpl<
          _$FederalFundsRateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FederalFundsRateModelImplToJson(
      this,
    );
  }
}

abstract class _FederalFundsRateModel implements FederalFundsRateModel {
  const factory _FederalFundsRateModel(
          {required final String name,
          required final String interval,
          required final String unit,
          required final List<FederalFundsRateDataPoint> data}) =
      _$FederalFundsRateModelImpl;

  factory _FederalFundsRateModel.fromJson(Map<String, dynamic> json) =
      _$FederalFundsRateModelImpl.fromJson;

  @override
  String get name;
  @override
  String get interval;
  @override
  String get unit;
  @override
  List<FederalFundsRateDataPoint> get data;

  /// Create a copy of FederalFundsRateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FederalFundsRateModelImplCopyWith<_$FederalFundsRateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FederalFundsRateDataPoint _$FederalFundsRateDataPointFromJson(
    Map<String, dynamic> json) {
  return _FederalFundsRateDataPoint.fromJson(json);
}

/// @nodoc
mixin _$FederalFundsRateDataPoint {
  String get date => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this FederalFundsRateDataPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FederalFundsRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FederalFundsRateDataPointCopyWith<FederalFundsRateDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FederalFundsRateDataPointCopyWith<$Res> {
  factory $FederalFundsRateDataPointCopyWith(FederalFundsRateDataPoint value,
          $Res Function(FederalFundsRateDataPoint) then) =
      _$FederalFundsRateDataPointCopyWithImpl<$Res, FederalFundsRateDataPoint>;
  @useResult
  $Res call({String date, String value});
}

/// @nodoc
class _$FederalFundsRateDataPointCopyWithImpl<$Res,
        $Val extends FederalFundsRateDataPoint>
    implements $FederalFundsRateDataPointCopyWith<$Res> {
  _$FederalFundsRateDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FederalFundsRateDataPoint
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
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FederalFundsRateDataPointImplCopyWith<$Res>
    implements $FederalFundsRateDataPointCopyWith<$Res> {
  factory _$$FederalFundsRateDataPointImplCopyWith(
          _$FederalFundsRateDataPointImpl value,
          $Res Function(_$FederalFundsRateDataPointImpl) then) =
      __$$FederalFundsRateDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String value});
}

/// @nodoc
class __$$FederalFundsRateDataPointImplCopyWithImpl<$Res>
    extends _$FederalFundsRateDataPointCopyWithImpl<$Res,
        _$FederalFundsRateDataPointImpl>
    implements _$$FederalFundsRateDataPointImplCopyWith<$Res> {
  __$$FederalFundsRateDataPointImplCopyWithImpl(
      _$FederalFundsRateDataPointImpl _value,
      $Res Function(_$FederalFundsRateDataPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of FederalFundsRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$FederalFundsRateDataPointImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FederalFundsRateDataPointImpl implements _FederalFundsRateDataPoint {
  const _$FederalFundsRateDataPointImpl(
      {required this.date, required this.value});

  factory _$FederalFundsRateDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$FederalFundsRateDataPointImplFromJson(json);

  @override
  final String date;
  @override
  final String value;

  @override
  String toString() {
    return 'FederalFundsRateDataPoint(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FederalFundsRateDataPointImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of FederalFundsRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FederalFundsRateDataPointImplCopyWith<_$FederalFundsRateDataPointImpl>
      get copyWith => __$$FederalFundsRateDataPointImplCopyWithImpl<
          _$FederalFundsRateDataPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FederalFundsRateDataPointImplToJson(
      this,
    );
  }
}

abstract class _FederalFundsRateDataPoint implements FederalFundsRateDataPoint {
  const factory _FederalFundsRateDataPoint(
      {required final String date,
      required final String value}) = _$FederalFundsRateDataPointImpl;

  factory _FederalFundsRateDataPoint.fromJson(Map<String, dynamic> json) =
      _$FederalFundsRateDataPointImpl.fromJson;

  @override
  String get date;
  @override
  String get value;

  /// Create a copy of FederalFundsRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FederalFundsRateDataPointImplCopyWith<_$FederalFundsRateDataPointImpl>
      get copyWith => throw _privateConstructorUsedError;
}
