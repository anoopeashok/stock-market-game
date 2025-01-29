// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/commodities/oil_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OilPriceModel _$OilPriceModelFromJson(Map<String, dynamic> json) {
  return _OilPriceModel.fromJson(json);
}

/// @nodoc
mixin _$OilPriceModel {
  String get name => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _limitDataItems)
  List<OilPriceData> get data => throw _privateConstructorUsedError;

  /// Serializes this OilPriceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OilPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OilPriceModelCopyWith<OilPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OilPriceModelCopyWith<$Res> {
  factory $OilPriceModelCopyWith(
          OilPriceModel value, $Res Function(OilPriceModel) then) =
      _$OilPriceModelCopyWithImpl<$Res, OilPriceModel>;
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<OilPriceData> data});
}

/// @nodoc
class _$OilPriceModelCopyWithImpl<$Res, $Val extends OilPriceModel>
    implements $OilPriceModelCopyWith<$Res> {
  _$OilPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OilPriceModel
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
              as List<OilPriceData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OilPriceModelImplCopyWith<$Res>
    implements $OilPriceModelCopyWith<$Res> {
  factory _$$OilPriceModelImplCopyWith(
          _$OilPriceModelImpl value, $Res Function(_$OilPriceModelImpl) then) =
      __$$OilPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<OilPriceData> data});
}

/// @nodoc
class __$$OilPriceModelImplCopyWithImpl<$Res>
    extends _$OilPriceModelCopyWithImpl<$Res, _$OilPriceModelImpl>
    implements _$$OilPriceModelImplCopyWith<$Res> {
  __$$OilPriceModelImplCopyWithImpl(
      _$OilPriceModelImpl _value, $Res Function(_$OilPriceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OilPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_$OilPriceModelImpl(
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
              as List<OilPriceData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OilPriceModelImpl implements _OilPriceModel {
  const _$OilPriceModelImpl(
      {required this.name,
      required this.interval,
      required this.unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<OilPriceData> data})
      : _data = data;

  factory _$OilPriceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OilPriceModelImplFromJson(json);

  @override
  final String name;
  @override
  final String interval;
  @override
  final String unit;
  final List<OilPriceData> _data;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<OilPriceData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OilPriceModel(name: $name, interval: $interval, unit: $unit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OilPriceModelImpl &&
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

  /// Create a copy of OilPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OilPriceModelImplCopyWith<_$OilPriceModelImpl> get copyWith =>
      __$$OilPriceModelImplCopyWithImpl<_$OilPriceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OilPriceModelImplToJson(
      this,
    );
  }
}

abstract class _OilPriceModel implements OilPriceModel {
  const factory _OilPriceModel(
      {required final String name,
      required final String interval,
      required final String unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<OilPriceData> data}) = _$OilPriceModelImpl;

  factory _OilPriceModel.fromJson(Map<String, dynamic> json) =
      _$OilPriceModelImpl.fromJson;

  @override
  String get name;
  @override
  String get interval;
  @override
  String get unit;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<OilPriceData> get data;

  /// Create a copy of OilPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OilPriceModelImplCopyWith<_$OilPriceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OilPriceData _$OilPriceDataFromJson(Map<String, dynamic> json) {
  return _OilPriceData.fromJson(json);
}

/// @nodoc
mixin _$OilPriceData {
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseValue)
  double? get value => throw _privateConstructorUsedError;

  /// Serializes this OilPriceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OilPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OilPriceDataCopyWith<OilPriceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OilPriceDataCopyWith<$Res> {
  factory $OilPriceDataCopyWith(
          OilPriceData value, $Res Function(OilPriceData) then) =
      _$OilPriceDataCopyWithImpl<$Res, OilPriceData>;
  @useResult
  $Res call({DateTime date, @JsonKey(fromJson: _parseValue) double? value});
}

/// @nodoc
class _$OilPriceDataCopyWithImpl<$Res, $Val extends OilPriceData>
    implements $OilPriceDataCopyWith<$Res> {
  _$OilPriceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OilPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OilPriceDataImplCopyWith<$Res>
    implements $OilPriceDataCopyWith<$Res> {
  factory _$$OilPriceDataImplCopyWith(
          _$OilPriceDataImpl value, $Res Function(_$OilPriceDataImpl) then) =
      __$$OilPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, @JsonKey(fromJson: _parseValue) double? value});
}

/// @nodoc
class __$$OilPriceDataImplCopyWithImpl<$Res>
    extends _$OilPriceDataCopyWithImpl<$Res, _$OilPriceDataImpl>
    implements _$$OilPriceDataImplCopyWith<$Res> {
  __$$OilPriceDataImplCopyWithImpl(
      _$OilPriceDataImpl _value, $Res Function(_$OilPriceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OilPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = freezed,
  }) {
    return _then(_$OilPriceDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OilPriceDataImpl implements _OilPriceData {
  const _$OilPriceDataImpl(
      {required this.date,
      @JsonKey(fromJson: _parseValue) required this.value});

  factory _$OilPriceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OilPriceDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  @JsonKey(fromJson: _parseValue)
  final double? value;

  @override
  String toString() {
    return 'OilPriceData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OilPriceDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of OilPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OilPriceDataImplCopyWith<_$OilPriceDataImpl> get copyWith =>
      __$$OilPriceDataImplCopyWithImpl<_$OilPriceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OilPriceDataImplToJson(
      this,
    );
  }
}

abstract class _OilPriceData implements OilPriceData {
  const factory _OilPriceData(
          {required final DateTime date,
          @JsonKey(fromJson: _parseValue) required final double? value}) =
      _$OilPriceDataImpl;

  factory _OilPriceData.fromJson(Map<String, dynamic> json) =
      _$OilPriceDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  @JsonKey(fromJson: _parseValue)
  double? get value;

  /// Create a copy of OilPriceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OilPriceDataImplCopyWith<_$OilPriceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
