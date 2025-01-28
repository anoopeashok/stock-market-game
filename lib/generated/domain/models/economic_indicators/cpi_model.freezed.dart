// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/economic_indicators/cpi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CPIModel _$CPIModelFromJson(Map<String, dynamic> json) {
  return _CPIModel.fromJson(json);
}

/// @nodoc
mixin _$CPIModel {
  String get name => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _limitDataItems)
  List<CPIData> get data => throw _privateConstructorUsedError;

  /// Serializes this CPIModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CPIModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CPIModelCopyWith<CPIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPIModelCopyWith<$Res> {
  factory $CPIModelCopyWith(CPIModel value, $Res Function(CPIModel) then) =
      _$CPIModelCopyWithImpl<$Res, CPIModel>;
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<CPIData> data});
}

/// @nodoc
class _$CPIModelCopyWithImpl<$Res, $Val extends CPIModel>
    implements $CPIModelCopyWith<$Res> {
  _$CPIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CPIModel
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
              as List<CPIData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CPIModelImplCopyWith<$Res>
    implements $CPIModelCopyWith<$Res> {
  factory _$$CPIModelImplCopyWith(
          _$CPIModelImpl value, $Res Function(_$CPIModelImpl) then) =
      __$$CPIModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<CPIData> data});
}

/// @nodoc
class __$$CPIModelImplCopyWithImpl<$Res>
    extends _$CPIModelCopyWithImpl<$Res, _$CPIModelImpl>
    implements _$$CPIModelImplCopyWith<$Res> {
  __$$CPIModelImplCopyWithImpl(
      _$CPIModelImpl _value, $Res Function(_$CPIModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CPIModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_$CPIModelImpl(
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
              as List<CPIData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CPIModelImpl implements _CPIModel {
  const _$CPIModelImpl(
      {required this.name,
      required this.interval,
      required this.unit,
      @JsonKey(fromJson: _limitDataItems) required final List<CPIData> data})
      : _data = data;

  factory _$CPIModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CPIModelImplFromJson(json);

  @override
  final String name;
  @override
  final String interval;
  @override
  final String unit;
  final List<CPIData> _data;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<CPIData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CPIModel(name: $name, interval: $interval, unit: $unit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CPIModelImpl &&
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

  /// Create a copy of CPIModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CPIModelImplCopyWith<_$CPIModelImpl> get copyWith =>
      __$$CPIModelImplCopyWithImpl<_$CPIModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CPIModelImplToJson(
      this,
    );
  }
}

abstract class _CPIModel implements CPIModel {
  const factory _CPIModel(
      {required final String name,
      required final String interval,
      required final String unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<CPIData> data}) = _$CPIModelImpl;

  factory _CPIModel.fromJson(Map<String, dynamic> json) =
      _$CPIModelImpl.fromJson;

  @override
  String get name;
  @override
  String get interval;
  @override
  String get unit;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<CPIData> get data;

  /// Create a copy of CPIModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CPIModelImplCopyWith<_$CPIModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CPIData _$CPIDataFromJson(Map<String, dynamic> json) {
  return _CPIData.fromJson(json);
}

/// @nodoc
mixin _$CPIData {
  DateTime get date => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this CPIData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CPIData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CPIDataCopyWith<CPIData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPIDataCopyWith<$Res> {
  factory $CPIDataCopyWith(CPIData value, $Res Function(CPIData) then) =
      _$CPIDataCopyWithImpl<$Res, CPIData>;
  @useResult
  $Res call({DateTime date, String value});
}

/// @nodoc
class _$CPIDataCopyWithImpl<$Res, $Val extends CPIData>
    implements $CPIDataCopyWith<$Res> {
  _$CPIDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CPIData
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
abstract class _$$CPIDataImplCopyWith<$Res> implements $CPIDataCopyWith<$Res> {
  factory _$$CPIDataImplCopyWith(
          _$CPIDataImpl value, $Res Function(_$CPIDataImpl) then) =
      __$$CPIDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, String value});
}

/// @nodoc
class __$$CPIDataImplCopyWithImpl<$Res>
    extends _$CPIDataCopyWithImpl<$Res, _$CPIDataImpl>
    implements _$$CPIDataImplCopyWith<$Res> {
  __$$CPIDataImplCopyWithImpl(
      _$CPIDataImpl _value, $Res Function(_$CPIDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CPIData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$CPIDataImpl(
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
class _$CPIDataImpl implements _CPIData {
  const _$CPIDataImpl({required this.date, required this.value});

  factory _$CPIDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CPIDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String value;

  @override
  String toString() {
    return 'CPIData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CPIDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of CPIData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CPIDataImplCopyWith<_$CPIDataImpl> get copyWith =>
      __$$CPIDataImplCopyWithImpl<_$CPIDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CPIDataImplToJson(
      this,
    );
  }
}

abstract class _CPIData implements CPIData {
  const factory _CPIData(
      {required final DateTime date,
      required final String value}) = _$CPIDataImpl;

  factory _CPIData.fromJson(Map<String, dynamic> json) = _$CPIDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get value;

  /// Create a copy of CPIData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CPIDataImplCopyWith<_$CPIDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
