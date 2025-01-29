// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../ui/stock/stock_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockDetailState {
  List<double> get stockprices => throw _privateConstructorUsedError;
  CompanyInformation? get companyInformation =>
      throw _privateConstructorUsedError;
  bool get isInitalLoading => throw _privateConstructorUsedError;
  bool get barLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of StockDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockDetailStateCopyWith<StockDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDetailStateCopyWith<$Res> {
  factory $StockDetailStateCopyWith(
          StockDetailState value, $Res Function(StockDetailState) then) =
      _$StockDetailStateCopyWithImpl<$Res, StockDetailState>;
  @useResult
  $Res call(
      {List<double> stockprices,
      CompanyInformation? companyInformation,
      bool isInitalLoading,
      bool barLoading,
      bool isError,
      String? error});

  $CompanyInformationCopyWith<$Res>? get companyInformation;
}

/// @nodoc
class _$StockDetailStateCopyWithImpl<$Res, $Val extends StockDetailState>
    implements $StockDetailStateCopyWith<$Res> {
  _$StockDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockprices = null,
    Object? companyInformation = freezed,
    Object? isInitalLoading = null,
    Object? barLoading = null,
    Object? isError = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      stockprices: null == stockprices
          ? _value.stockprices
          : stockprices // ignore: cast_nullable_to_non_nullable
              as List<double>,
      companyInformation: freezed == companyInformation
          ? _value.companyInformation
          : companyInformation // ignore: cast_nullable_to_non_nullable
              as CompanyInformation?,
      isInitalLoading: null == isInitalLoading
          ? _value.isInitalLoading
          : isInitalLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      barLoading: null == barLoading
          ? _value.barLoading
          : barLoading // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of StockDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyInformationCopyWith<$Res>? get companyInformation {
    if (_value.companyInformation == null) {
      return null;
    }

    return $CompanyInformationCopyWith<$Res>(_value.companyInformation!,
        (value) {
      return _then(_value.copyWith(companyInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockDetailStateImplCopyWith<$Res>
    implements $StockDetailStateCopyWith<$Res> {
  factory _$$StockDetailStateImplCopyWith(_$StockDetailStateImpl value,
          $Res Function(_$StockDetailStateImpl) then) =
      __$$StockDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<double> stockprices,
      CompanyInformation? companyInformation,
      bool isInitalLoading,
      bool barLoading,
      bool isError,
      String? error});

  @override
  $CompanyInformationCopyWith<$Res>? get companyInformation;
}

/// @nodoc
class __$$StockDetailStateImplCopyWithImpl<$Res>
    extends _$StockDetailStateCopyWithImpl<$Res, _$StockDetailStateImpl>
    implements _$$StockDetailStateImplCopyWith<$Res> {
  __$$StockDetailStateImplCopyWithImpl(_$StockDetailStateImpl _value,
      $Res Function(_$StockDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stockprices = null,
    Object? companyInformation = freezed,
    Object? isInitalLoading = null,
    Object? barLoading = null,
    Object? isError = null,
    Object? error = freezed,
  }) {
    return _then(_$StockDetailStateImpl(
      stockprices: null == stockprices
          ? _value._stockprices
          : stockprices // ignore: cast_nullable_to_non_nullable
              as List<double>,
      companyInformation: freezed == companyInformation
          ? _value.companyInformation
          : companyInformation // ignore: cast_nullable_to_non_nullable
              as CompanyInformation?,
      isInitalLoading: null == isInitalLoading
          ? _value.isInitalLoading
          : isInitalLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      barLoading: null == barLoading
          ? _value.barLoading
          : barLoading // ignore: cast_nullable_to_non_nullable
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

class _$StockDetailStateImpl extends _StockDetailState {
  const _$StockDetailStateImpl(
      {final List<double> stockprices = const [],
      this.companyInformation,
      this.isInitalLoading = true,
      this.barLoading = false,
      this.isError = false,
      this.error})
      : _stockprices = stockprices,
        super._();

  final List<double> _stockprices;
  @override
  @JsonKey()
  List<double> get stockprices {
    if (_stockprices is EqualUnmodifiableListView) return _stockprices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockprices);
  }

  @override
  final CompanyInformation? companyInformation;
  @override
  @JsonKey()
  final bool isInitalLoading;
  @override
  @JsonKey()
  final bool barLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  final String? error;

  @override
  String toString() {
    return 'StockDetailState(stockprices: $stockprices, companyInformation: $companyInformation, isInitalLoading: $isInitalLoading, barLoading: $barLoading, isError: $isError, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailStateImpl &&
            const DeepCollectionEquality()
                .equals(other._stockprices, _stockprices) &&
            (identical(other.companyInformation, companyInformation) ||
                other.companyInformation == companyInformation) &&
            (identical(other.isInitalLoading, isInitalLoading) ||
                other.isInitalLoading == isInitalLoading) &&
            (identical(other.barLoading, barLoading) ||
                other.barLoading == barLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stockprices),
      companyInformation,
      isInitalLoading,
      barLoading,
      isError,
      error);

  /// Create a copy of StockDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDetailStateImplCopyWith<_$StockDetailStateImpl> get copyWith =>
      __$$StockDetailStateImplCopyWithImpl<_$StockDetailStateImpl>(
          this, _$identity);
}

abstract class _StockDetailState extends StockDetailState {
  const factory _StockDetailState(
      {final List<double> stockprices,
      final CompanyInformation? companyInformation,
      final bool isInitalLoading,
      final bool barLoading,
      final bool isError,
      final String? error}) = _$StockDetailStateImpl;
  const _StockDetailState._() : super._();

  @override
  List<double> get stockprices;
  @override
  CompanyInformation? get companyInformation;
  @override
  bool get isInitalLoading;
  @override
  bool get barLoading;
  @override
  bool get isError;
  @override
  String? get error;

  /// Create a copy of StockDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockDetailStateImplCopyWith<_$StockDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
