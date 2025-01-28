// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/stock/exchange_codes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeCodesModel _$ExchangeCodesModelFromJson(Map<String, dynamic> json) {
  return _ExchangeCodesModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeCodesModel {
  Map<String, String> get conditions => throw _privateConstructorUsedError;

  /// Serializes this ExchangeCodesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExchangeCodesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExchangeCodesModelCopyWith<ExchangeCodesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeCodesModelCopyWith<$Res> {
  factory $ExchangeCodesModelCopyWith(
          ExchangeCodesModel value, $Res Function(ExchangeCodesModel) then) =
      _$ExchangeCodesModelCopyWithImpl<$Res, ExchangeCodesModel>;
  @useResult
  $Res call({Map<String, String> conditions});
}

/// @nodoc
class _$ExchangeCodesModelCopyWithImpl<$Res, $Val extends ExchangeCodesModel>
    implements $ExchangeCodesModelCopyWith<$Res> {
  _$ExchangeCodesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExchangeCodesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = null,
  }) {
    return _then(_value.copyWith(
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeCodesModelImplCopyWith<$Res>
    implements $ExchangeCodesModelCopyWith<$Res> {
  factory _$$ExchangeCodesModelImplCopyWith(_$ExchangeCodesModelImpl value,
          $Res Function(_$ExchangeCodesModelImpl) then) =
      __$$ExchangeCodesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> conditions});
}

/// @nodoc
class __$$ExchangeCodesModelImplCopyWithImpl<$Res>
    extends _$ExchangeCodesModelCopyWithImpl<$Res, _$ExchangeCodesModelImpl>
    implements _$$ExchangeCodesModelImplCopyWith<$Res> {
  __$$ExchangeCodesModelImplCopyWithImpl(_$ExchangeCodesModelImpl _value,
      $Res Function(_$ExchangeCodesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExchangeCodesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = null,
  }) {
    return _then(_$ExchangeCodesModelImpl(
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeCodesModelImpl implements _ExchangeCodesModel {
  const _$ExchangeCodesModelImpl(
      {required final Map<String, String> conditions})
      : _conditions = conditions;

  factory _$ExchangeCodesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeCodesModelImplFromJson(json);

  final Map<String, String> _conditions;
  @override
  Map<String, String> get conditions {
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conditions);
  }

  @override
  String toString() {
    return 'ExchangeCodesModel(conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeCodesModelImpl &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  /// Create a copy of ExchangeCodesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeCodesModelImplCopyWith<_$ExchangeCodesModelImpl> get copyWith =>
      __$$ExchangeCodesModelImplCopyWithImpl<_$ExchangeCodesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeCodesModelImplToJson(
      this,
    );
  }
}

abstract class _ExchangeCodesModel implements ExchangeCodesModel {
  const factory _ExchangeCodesModel(
          {required final Map<String, String> conditions}) =
      _$ExchangeCodesModelImpl;

  factory _ExchangeCodesModel.fromJson(Map<String, dynamic> json) =
      _$ExchangeCodesModelImpl.fromJson;

  @override
  Map<String, String> get conditions;

  /// Create a copy of ExchangeCodesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExchangeCodesModelImplCopyWith<_$ExchangeCodesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
