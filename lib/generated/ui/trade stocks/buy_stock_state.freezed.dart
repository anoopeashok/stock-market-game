// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../ui/trade stocks/buy_stock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuyStockState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of BuyStockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuyStockStateCopyWith<BuyStockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyStockStateCopyWith<$Res> {
  factory $BuyStockStateCopyWith(
          BuyStockState value, $Res Function(BuyStockState) then) =
      _$BuyStockStateCopyWithImpl<$Res, BuyStockState>;
  @useResult
  $Res call({bool isLoading, bool isError, String? error});
}

/// @nodoc
class _$BuyStockStateCopyWithImpl<$Res, $Val extends BuyStockState>
    implements $BuyStockStateCopyWith<$Res> {
  _$BuyStockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuyStockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuyStockStateImplCopyWith<$Res>
    implements $BuyStockStateCopyWith<$Res> {
  factory _$$BuyStockStateImplCopyWith(
          _$BuyStockStateImpl value, $Res Function(_$BuyStockStateImpl) then) =
      __$$BuyStockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, String? error});
}

/// @nodoc
class __$$BuyStockStateImplCopyWithImpl<$Res>
    extends _$BuyStockStateCopyWithImpl<$Res, _$BuyStockStateImpl>
    implements _$$BuyStockStateImplCopyWith<$Res> {
  __$$BuyStockStateImplCopyWithImpl(
      _$BuyStockStateImpl _value, $Res Function(_$BuyStockStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuyStockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
  }) {
    return _then(_$BuyStockStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BuyStockStateImpl extends _BuyStockState {
  const _$BuyStockStateImpl(
      {this.isLoading = false, this.isError = false, this.error})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  final String? error;

  @override
  String toString() {
    return 'BuyStockState(isLoading: $isLoading, isError: $isError, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyStockStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, error);

  /// Create a copy of BuyStockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyStockStateImplCopyWith<_$BuyStockStateImpl> get copyWith =>
      __$$BuyStockStateImplCopyWithImpl<_$BuyStockStateImpl>(this, _$identity);
}

abstract class _BuyStockState extends BuyStockState {
  const factory _BuyStockState(
      {final bool isLoading,
      final bool isError,
      final String? error}) = _$BuyStockStateImpl;
  const _BuyStockState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get error;

  /// Create a copy of BuyStockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuyStockStateImplCopyWith<_$BuyStockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
