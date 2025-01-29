// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/stock/condition_codes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeConditionsModel _$TradeConditionsModelFromJson(Map<String, dynamic> json) {
  return _TradeConditionsModel.fromJson(json);
}

/// @nodoc
mixin _$TradeConditionsModel {
  Map<String, String> get conditions => throw _privateConstructorUsedError;

  /// Serializes this TradeConditionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeConditionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeConditionsModelCopyWith<TradeConditionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeConditionsModelCopyWith<$Res> {
  factory $TradeConditionsModelCopyWith(TradeConditionsModel value,
          $Res Function(TradeConditionsModel) then) =
      _$TradeConditionsModelCopyWithImpl<$Res, TradeConditionsModel>;
  @useResult
  $Res call({Map<String, String> conditions});
}

/// @nodoc
class _$TradeConditionsModelCopyWithImpl<$Res,
        $Val extends TradeConditionsModel>
    implements $TradeConditionsModelCopyWith<$Res> {
  _$TradeConditionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeConditionsModel
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
abstract class _$$TradeConditionsModelImplCopyWith<$Res>
    implements $TradeConditionsModelCopyWith<$Res> {
  factory _$$TradeConditionsModelImplCopyWith(_$TradeConditionsModelImpl value,
          $Res Function(_$TradeConditionsModelImpl) then) =
      __$$TradeConditionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> conditions});
}

/// @nodoc
class __$$TradeConditionsModelImplCopyWithImpl<$Res>
    extends _$TradeConditionsModelCopyWithImpl<$Res, _$TradeConditionsModelImpl>
    implements _$$TradeConditionsModelImplCopyWith<$Res> {
  __$$TradeConditionsModelImplCopyWithImpl(_$TradeConditionsModelImpl _value,
      $Res Function(_$TradeConditionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeConditionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = null,
  }) {
    return _then(_$TradeConditionsModelImpl(
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeConditionsModelImpl implements _TradeConditionsModel {
  const _$TradeConditionsModelImpl(
      {required final Map<String, String> conditions})
      : _conditions = conditions;

  factory _$TradeConditionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeConditionsModelImplFromJson(json);

  final Map<String, String> _conditions;
  @override
  Map<String, String> get conditions {
    if (_conditions is EqualUnmodifiableMapView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conditions);
  }

  @override
  String toString() {
    return 'TradeConditionsModel(conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeConditionsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  /// Create a copy of TradeConditionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeConditionsModelImplCopyWith<_$TradeConditionsModelImpl>
      get copyWith =>
          __$$TradeConditionsModelImplCopyWithImpl<_$TradeConditionsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeConditionsModelImplToJson(
      this,
    );
  }
}

abstract class _TradeConditionsModel implements TradeConditionsModel {
  const factory _TradeConditionsModel(
          {required final Map<String, String> conditions}) =
      _$TradeConditionsModelImpl;

  factory _TradeConditionsModel.fromJson(Map<String, dynamic> json) =
      _$TradeConditionsModelImpl.fromJson;

  @override
  Map<String, String> get conditions;

  /// Create a copy of TradeConditionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeConditionsModelImplCopyWith<_$TradeConditionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
