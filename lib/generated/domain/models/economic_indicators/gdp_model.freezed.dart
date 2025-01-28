// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/economic_indicators/gdp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GdpModel _$GdpModelFromJson(Map<String, dynamic> json) {
  return _GdpModel.fromJson(json);
}

/// @nodoc
mixin _$GdpModel {
  String get name => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _limitDataItems)
  List<GdpDataPoint> get data => throw _privateConstructorUsedError;

  /// Serializes this GdpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GdpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GdpModelCopyWith<GdpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdpModelCopyWith<$Res> {
  factory $GdpModelCopyWith(GdpModel value, $Res Function(GdpModel) then) =
      _$GdpModelCopyWithImpl<$Res, GdpModel>;
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<GdpDataPoint> data});
}

/// @nodoc
class _$GdpModelCopyWithImpl<$Res, $Val extends GdpModel>
    implements $GdpModelCopyWith<$Res> {
  _$GdpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GdpModel
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
              as List<GdpDataPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GdpModelImplCopyWith<$Res>
    implements $GdpModelCopyWith<$Res> {
  factory _$$GdpModelImplCopyWith(
          _$GdpModelImpl value, $Res Function(_$GdpModelImpl) then) =
      __$$GdpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<GdpDataPoint> data});
}

/// @nodoc
class __$$GdpModelImplCopyWithImpl<$Res>
    extends _$GdpModelCopyWithImpl<$Res, _$GdpModelImpl>
    implements _$$GdpModelImplCopyWith<$Res> {
  __$$GdpModelImplCopyWithImpl(
      _$GdpModelImpl _value, $Res Function(_$GdpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GdpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_$GdpModelImpl(
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
              as List<GdpDataPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GdpModelImpl implements _GdpModel {
  const _$GdpModelImpl(
      {required this.name,
      required this.interval,
      required this.unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<GdpDataPoint> data})
      : _data = data;

  factory _$GdpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GdpModelImplFromJson(json);

  @override
  final String name;
  @override
  final String interval;
  @override
  final String unit;
  final List<GdpDataPoint> _data;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<GdpDataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GdpModel(name: $name, interval: $interval, unit: $unit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GdpModelImpl &&
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

  /// Create a copy of GdpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GdpModelImplCopyWith<_$GdpModelImpl> get copyWith =>
      __$$GdpModelImplCopyWithImpl<_$GdpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GdpModelImplToJson(
      this,
    );
  }
}

abstract class _GdpModel implements GdpModel {
  const factory _GdpModel(
      {required final String name,
      required final String interval,
      required final String unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<GdpDataPoint> data}) = _$GdpModelImpl;

  factory _GdpModel.fromJson(Map<String, dynamic> json) =
      _$GdpModelImpl.fromJson;

  @override
  String get name;
  @override
  String get interval;
  @override
  String get unit;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<GdpDataPoint> get data;

  /// Create a copy of GdpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GdpModelImplCopyWith<_$GdpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GdpDataPoint _$GdpDataPointFromJson(Map<String, dynamic> json) {
  return _GdpDataPoint.fromJson(json);
}

/// @nodoc
mixin _$GdpDataPoint {
  String get date => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this GdpDataPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GdpDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GdpDataPointCopyWith<GdpDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GdpDataPointCopyWith<$Res> {
  factory $GdpDataPointCopyWith(
          GdpDataPoint value, $Res Function(GdpDataPoint) then) =
      _$GdpDataPointCopyWithImpl<$Res, GdpDataPoint>;
  @useResult
  $Res call({String date, String value});
}

/// @nodoc
class _$GdpDataPointCopyWithImpl<$Res, $Val extends GdpDataPoint>
    implements $GdpDataPointCopyWith<$Res> {
  _$GdpDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GdpDataPoint
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
abstract class _$$GdpDataPointImplCopyWith<$Res>
    implements $GdpDataPointCopyWith<$Res> {
  factory _$$GdpDataPointImplCopyWith(
          _$GdpDataPointImpl value, $Res Function(_$GdpDataPointImpl) then) =
      __$$GdpDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String value});
}

/// @nodoc
class __$$GdpDataPointImplCopyWithImpl<$Res>
    extends _$GdpDataPointCopyWithImpl<$Res, _$GdpDataPointImpl>
    implements _$$GdpDataPointImplCopyWith<$Res> {
  __$$GdpDataPointImplCopyWithImpl(
      _$GdpDataPointImpl _value, $Res Function(_$GdpDataPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of GdpDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$GdpDataPointImpl(
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
class _$GdpDataPointImpl implements _GdpDataPoint {
  const _$GdpDataPointImpl({required this.date, required this.value});

  factory _$GdpDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$GdpDataPointImplFromJson(json);

  @override
  final String date;
  @override
  final String value;

  @override
  String toString() {
    return 'GdpDataPoint(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GdpDataPointImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of GdpDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GdpDataPointImplCopyWith<_$GdpDataPointImpl> get copyWith =>
      __$$GdpDataPointImplCopyWithImpl<_$GdpDataPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GdpDataPointImplToJson(
      this,
    );
  }
}

abstract class _GdpDataPoint implements GdpDataPoint {
  const factory _GdpDataPoint(
      {required final String date,
      required final String value}) = _$GdpDataPointImpl;

  factory _GdpDataPoint.fromJson(Map<String, dynamic> json) =
      _$GdpDataPointImpl.fromJson;

  @override
  String get date;
  @override
  String get value;

  /// Create a copy of GdpDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GdpDataPointImplCopyWith<_$GdpDataPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
