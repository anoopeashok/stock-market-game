// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/commodities/gas_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NaturalGasPriceModel _$NaturalGasPriceModelFromJson(Map<String, dynamic> json) {
  return _NaturalGasPriceModel.fromJson(json);
}

/// @nodoc
mixin _$NaturalGasPriceModel {
  String get name => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _limitDataItems)
  List<NaturalGasPriceData> get data => throw _privateConstructorUsedError;

  /// Serializes this NaturalGasPriceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NaturalGasPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NaturalGasPriceModelCopyWith<NaturalGasPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NaturalGasPriceModelCopyWith<$Res> {
  factory $NaturalGasPriceModelCopyWith(NaturalGasPriceModel value,
          $Res Function(NaturalGasPriceModel) then) =
      _$NaturalGasPriceModelCopyWithImpl<$Res, NaturalGasPriceModel>;
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<NaturalGasPriceData> data});
}

/// @nodoc
class _$NaturalGasPriceModelCopyWithImpl<$Res,
        $Val extends NaturalGasPriceModel>
    implements $NaturalGasPriceModelCopyWith<$Res> {
  _$NaturalGasPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NaturalGasPriceModel
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
              as List<NaturalGasPriceData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NaturalGasPriceModelImplCopyWith<$Res>
    implements $NaturalGasPriceModelCopyWith<$Res> {
  factory _$$NaturalGasPriceModelImplCopyWith(_$NaturalGasPriceModelImpl value,
          $Res Function(_$NaturalGasPriceModelImpl) then) =
      __$$NaturalGasPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String interval,
      String unit,
      @JsonKey(fromJson: _limitDataItems) List<NaturalGasPriceData> data});
}

/// @nodoc
class __$$NaturalGasPriceModelImplCopyWithImpl<$Res>
    extends _$NaturalGasPriceModelCopyWithImpl<$Res, _$NaturalGasPriceModelImpl>
    implements _$$NaturalGasPriceModelImplCopyWith<$Res> {
  __$$NaturalGasPriceModelImplCopyWithImpl(_$NaturalGasPriceModelImpl _value,
      $Res Function(_$NaturalGasPriceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NaturalGasPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? interval = null,
    Object? unit = null,
    Object? data = null,
  }) {
    return _then(_$NaturalGasPriceModelImpl(
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
              as List<NaturalGasPriceData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NaturalGasPriceModelImpl implements _NaturalGasPriceModel {
  const _$NaturalGasPriceModelImpl(
      {required this.name,
      required this.interval,
      required this.unit,
      @JsonKey(fromJson: _limitDataItems)
      required final List<NaturalGasPriceData> data})
      : _data = data;

  factory _$NaturalGasPriceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NaturalGasPriceModelImplFromJson(json);

  @override
  final String name;
  @override
  final String interval;
  @override
  final String unit;
  final List<NaturalGasPriceData> _data;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<NaturalGasPriceData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NaturalGasPriceModel(name: $name, interval: $interval, unit: $unit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NaturalGasPriceModelImpl &&
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

  /// Create a copy of NaturalGasPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NaturalGasPriceModelImplCopyWith<_$NaturalGasPriceModelImpl>
      get copyWith =>
          __$$NaturalGasPriceModelImplCopyWithImpl<_$NaturalGasPriceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NaturalGasPriceModelImplToJson(
      this,
    );
  }
}

abstract class _NaturalGasPriceModel implements NaturalGasPriceModel {
  const factory _NaturalGasPriceModel(
          {required final String name,
          required final String interval,
          required final String unit,
          @JsonKey(fromJson: _limitDataItems)
          required final List<NaturalGasPriceData> data}) =
      _$NaturalGasPriceModelImpl;

  factory _NaturalGasPriceModel.fromJson(Map<String, dynamic> json) =
      _$NaturalGasPriceModelImpl.fromJson;

  @override
  String get name;
  @override
  String get interval;
  @override
  String get unit;
  @override
  @JsonKey(fromJson: _limitDataItems)
  List<NaturalGasPriceData> get data;

  /// Create a copy of NaturalGasPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NaturalGasPriceModelImplCopyWith<_$NaturalGasPriceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NaturalGasPriceData _$NaturalGasPriceDataFromJson(Map<String, dynamic> json) {
  return _NaturalGasPriceData.fromJson(json);
}

/// @nodoc
mixin _$NaturalGasPriceData {
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseValue)
  double? get value => throw _privateConstructorUsedError;

  /// Serializes this NaturalGasPriceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NaturalGasPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NaturalGasPriceDataCopyWith<NaturalGasPriceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NaturalGasPriceDataCopyWith<$Res> {
  factory $NaturalGasPriceDataCopyWith(
          NaturalGasPriceData value, $Res Function(NaturalGasPriceData) then) =
      _$NaturalGasPriceDataCopyWithImpl<$Res, NaturalGasPriceData>;
  @useResult
  $Res call({DateTime date, @JsonKey(fromJson: _parseValue) double? value});
}

/// @nodoc
class _$NaturalGasPriceDataCopyWithImpl<$Res, $Val extends NaturalGasPriceData>
    implements $NaturalGasPriceDataCopyWith<$Res> {
  _$NaturalGasPriceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NaturalGasPriceData
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
abstract class _$$NaturalGasPriceDataImplCopyWith<$Res>
    implements $NaturalGasPriceDataCopyWith<$Res> {
  factory _$$NaturalGasPriceDataImplCopyWith(_$NaturalGasPriceDataImpl value,
          $Res Function(_$NaturalGasPriceDataImpl) then) =
      __$$NaturalGasPriceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, @JsonKey(fromJson: _parseValue) double? value});
}

/// @nodoc
class __$$NaturalGasPriceDataImplCopyWithImpl<$Res>
    extends _$NaturalGasPriceDataCopyWithImpl<$Res, _$NaturalGasPriceDataImpl>
    implements _$$NaturalGasPriceDataImplCopyWith<$Res> {
  __$$NaturalGasPriceDataImplCopyWithImpl(_$NaturalGasPriceDataImpl _value,
      $Res Function(_$NaturalGasPriceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NaturalGasPriceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = freezed,
  }) {
    return _then(_$NaturalGasPriceDataImpl(
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
class _$NaturalGasPriceDataImpl implements _NaturalGasPriceData {
  const _$NaturalGasPriceDataImpl(
      {required this.date,
      @JsonKey(fromJson: _parseValue) required this.value});

  factory _$NaturalGasPriceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NaturalGasPriceDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  @JsonKey(fromJson: _parseValue)
  final double? value;

  @override
  String toString() {
    return 'NaturalGasPriceData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NaturalGasPriceDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of NaturalGasPriceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NaturalGasPriceDataImplCopyWith<_$NaturalGasPriceDataImpl> get copyWith =>
      __$$NaturalGasPriceDataImplCopyWithImpl<_$NaturalGasPriceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NaturalGasPriceDataImplToJson(
      this,
    );
  }
}

abstract class _NaturalGasPriceData implements NaturalGasPriceData {
  const factory _NaturalGasPriceData(
          {required final DateTime date,
          @JsonKey(fromJson: _parseValue) required final double? value}) =
      _$NaturalGasPriceDataImpl;

  factory _NaturalGasPriceData.fromJson(Map<String, dynamic> json) =
      _$NaturalGasPriceDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  @JsonKey(fromJson: _parseValue)
  double? get value;

  /// Create a copy of NaturalGasPriceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NaturalGasPriceDataImplCopyWith<_$NaturalGasPriceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
