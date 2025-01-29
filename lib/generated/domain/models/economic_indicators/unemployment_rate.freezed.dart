// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/economic_indicators/unemployment_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnemploymentRateModel _$UnemploymentRateModelFromJson(
    Map<String, dynamic> json) {
  return _UnemploymentRateModel.fromJson(json);
}

/// @nodoc
mixin _$UnemploymentRateModel {
  String get name => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  List<UnemploymentRateDataPoint> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this UnemploymentRateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnemploymentRateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnemploymentRateModelCopyWith<UnemploymentRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnemploymentRateModelCopyWith<$Res> {
  factory $UnemploymentRateModelCopyWith(UnemploymentRateModel value,
          $Res Function(UnemploymentRateModel) then) =
      _$UnemploymentRateModelCopyWithImpl<$Res, UnemploymentRateModel>;
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      List<UnemploymentRateDataPoint> data});
}

/// @nodoc
class _$UnemploymentRateModelCopyWithImpl<$Res,
        $Val extends UnemploymentRateModel>
    implements $UnemploymentRateModelCopyWith<$Res> {
  _$UnemploymentRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnemploymentRateModel
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
              as List<UnemploymentRateDataPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnemploymentRateModelImplCopyWith<$Res>
    implements $UnemploymentRateModelCopyWith<$Res> {
  factory _$$UnemploymentRateModelImplCopyWith(
          _$UnemploymentRateModelImpl value,
          $Res Function(_$UnemploymentRateModelImpl) then) =
      __$$UnemploymentRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      List<UnemploymentRateDataPoint> data});
}

/// @nodoc
class __$$UnemploymentRateModelImplCopyWithImpl<$Res>
    extends _$UnemploymentRateModelCopyWithImpl<$Res,
        _$UnemploymentRateModelImpl>
    implements _$$UnemploymentRateModelImplCopyWith<$Res> {
  __$$UnemploymentRateModelImplCopyWithImpl(_$UnemploymentRateModelImpl _value,
      $Res Function(_$UnemploymentRateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnemploymentRateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_$UnemploymentRateModelImpl(
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
              as List<UnemploymentRateDataPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnemploymentRateModelImpl implements _UnemploymentRateModel {
  const _$UnemploymentRateModelImpl(
      {required this.name,
      required this.interval,
      required this.unit,
      required final List<UnemploymentRateDataPoint> data})
      : _data = data;

  factory _$UnemploymentRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnemploymentRateModelImplFromJson(json);

  @override
  final String name;
  @override
  final String interval;
  @override
  final String unit;
  final List<UnemploymentRateDataPoint> _data;
  @override
  List<UnemploymentRateDataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UnemploymentRateModel(name: $name, interval: $interval, unit: $unit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnemploymentRateModelImpl &&
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

  /// Create a copy of UnemploymentRateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnemploymentRateModelImplCopyWith<_$UnemploymentRateModelImpl>
      get copyWith => __$$UnemploymentRateModelImplCopyWithImpl<
          _$UnemploymentRateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnemploymentRateModelImplToJson(
      this,
    );
  }
}

abstract class _UnemploymentRateModel implements UnemploymentRateModel {
  const factory _UnemploymentRateModel(
          {required final String name,
          required final String interval,
          required final String unit,
          required final List<UnemploymentRateDataPoint> data}) =
      _$UnemploymentRateModelImpl;

  factory _UnemploymentRateModel.fromJson(Map<String, dynamic> json) =
      _$UnemploymentRateModelImpl.fromJson;

  @override
  String get name;
  @override
  String get interval;
  @override
  String get unit;
  @override
  List<UnemploymentRateDataPoint> get data;

  /// Create a copy of UnemploymentRateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnemploymentRateModelImplCopyWith<_$UnemploymentRateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnemploymentRateDataPoint _$UnemploymentRateDataPointFromJson(
    Map<String, dynamic> json) {
  return _UnemploymentRateDataPoint.fromJson(json);
}

/// @nodoc
mixin _$UnemploymentRateDataPoint {
  String get date => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this UnemploymentRateDataPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnemploymentRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnemploymentRateDataPointCopyWith<UnemploymentRateDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnemploymentRateDataPointCopyWith<$Res> {
  factory $UnemploymentRateDataPointCopyWith(UnemploymentRateDataPoint value,
          $Res Function(UnemploymentRateDataPoint) then) =
      _$UnemploymentRateDataPointCopyWithImpl<$Res, UnemploymentRateDataPoint>;
  @useResult
  $Res call({String date, String value});
}

/// @nodoc
class _$UnemploymentRateDataPointCopyWithImpl<$Res,
        $Val extends UnemploymentRateDataPoint>
    implements $UnemploymentRateDataPointCopyWith<$Res> {
  _$UnemploymentRateDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnemploymentRateDataPoint
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
abstract class _$$UnemploymentRateDataPointImplCopyWith<$Res>
    implements $UnemploymentRateDataPointCopyWith<$Res> {
  factory _$$UnemploymentRateDataPointImplCopyWith(
          _$UnemploymentRateDataPointImpl value,
          $Res Function(_$UnemploymentRateDataPointImpl) then) =
      __$$UnemploymentRateDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String value});
}

/// @nodoc
class __$$UnemploymentRateDataPointImplCopyWithImpl<$Res>
    extends _$UnemploymentRateDataPointCopyWithImpl<$Res,
        _$UnemploymentRateDataPointImpl>
    implements _$$UnemploymentRateDataPointImplCopyWith<$Res> {
  __$$UnemploymentRateDataPointImplCopyWithImpl(
      _$UnemploymentRateDataPointImpl _value,
      $Res Function(_$UnemploymentRateDataPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnemploymentRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$UnemploymentRateDataPointImpl(
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
class _$UnemploymentRateDataPointImpl implements _UnemploymentRateDataPoint {
  const _$UnemploymentRateDataPointImpl(
      {required this.date, required this.value});

  factory _$UnemploymentRateDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnemploymentRateDataPointImplFromJson(json);

  @override
  final String date;
  @override
  final String value;

  @override
  String toString() {
    return 'UnemploymentRateDataPoint(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnemploymentRateDataPointImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of UnemploymentRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnemploymentRateDataPointImplCopyWith<_$UnemploymentRateDataPointImpl>
      get copyWith => __$$UnemploymentRateDataPointImplCopyWithImpl<
          _$UnemploymentRateDataPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnemploymentRateDataPointImplToJson(
      this,
    );
  }
}

abstract class _UnemploymentRateDataPoint implements UnemploymentRateDataPoint {
  const factory _UnemploymentRateDataPoint(
      {required final String date,
      required final String value}) = _$UnemploymentRateDataPointImpl;

  factory _UnemploymentRateDataPoint.fromJson(Map<String, dynamic> json) =
      _$UnemploymentRateDataPointImpl.fromJson;

  @override
  String get date;
  @override
  String get value;

  /// Create a copy of UnemploymentRateDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnemploymentRateDataPointImplCopyWith<_$UnemploymentRateDataPointImpl>
      get copyWith => throw _privateConstructorUsedError;
}
