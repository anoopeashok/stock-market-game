// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/company information/annual_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnualReportModel _$AnnualReportModelFromJson(Map<String, dynamic> json) {
  return _AnnualReportModel.fromJson(json);
}

/// @nodoc
mixin _$AnnualReportModel {
  String get symbol => throw _privateConstructorUsedError;
  AnnualReport get annualReport => throw _privateConstructorUsedError;

  /// Serializes this AnnualReportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnualReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnualReportModelCopyWith<AnnualReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnualReportModelCopyWith<$Res> {
  factory $AnnualReportModelCopyWith(
          AnnualReportModel value, $Res Function(AnnualReportModel) then) =
      _$AnnualReportModelCopyWithImpl<$Res, AnnualReportModel>;
  @useResult
  $Res call({String symbol, AnnualReport annualReport});

  $AnnualReportCopyWith<$Res> get annualReport;
}

/// @nodoc
class _$AnnualReportModelCopyWithImpl<$Res, $Val extends AnnualReportModel>
    implements $AnnualReportModelCopyWith<$Res> {
  _$AnnualReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnualReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? annualReport = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      annualReport: null == annualReport
          ? _value.annualReport
          : annualReport // ignore: cast_nullable_to_non_nullable
              as AnnualReport,
    ) as $Val);
  }

  /// Create a copy of AnnualReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnualReportCopyWith<$Res> get annualReport {
    return $AnnualReportCopyWith<$Res>(_value.annualReport, (value) {
      return _then(_value.copyWith(annualReport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnualReportModelImplCopyWith<$Res>
    implements $AnnualReportModelCopyWith<$Res> {
  factory _$$AnnualReportModelImplCopyWith(_$AnnualReportModelImpl value,
          $Res Function(_$AnnualReportModelImpl) then) =
      __$$AnnualReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, AnnualReport annualReport});

  @override
  $AnnualReportCopyWith<$Res> get annualReport;
}

/// @nodoc
class __$$AnnualReportModelImplCopyWithImpl<$Res>
    extends _$AnnualReportModelCopyWithImpl<$Res, _$AnnualReportModelImpl>
    implements _$$AnnualReportModelImplCopyWith<$Res> {
  __$$AnnualReportModelImplCopyWithImpl(_$AnnualReportModelImpl _value,
      $Res Function(_$AnnualReportModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnualReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? annualReport = null,
  }) {
    return _then(_$AnnualReportModelImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      annualReport: null == annualReport
          ? _value.annualReport
          : annualReport // ignore: cast_nullable_to_non_nullable
              as AnnualReport,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnualReportModelImpl implements _AnnualReportModel {
  const _$AnnualReportModelImpl(
      {required this.symbol, required this.annualReport});

  factory _$AnnualReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnualReportModelImplFromJson(json);

  @override
  final String symbol;
  @override
  final AnnualReport annualReport;

  @override
  String toString() {
    return 'AnnualReportModel(symbol: $symbol, annualReport: $annualReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnualReportModelImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.annualReport, annualReport) ||
                other.annualReport == annualReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, annualReport);

  /// Create a copy of AnnualReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnualReportModelImplCopyWith<_$AnnualReportModelImpl> get copyWith =>
      __$$AnnualReportModelImplCopyWithImpl<_$AnnualReportModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnualReportModelImplToJson(
      this,
    );
  }
}

abstract class _AnnualReportModel implements AnnualReportModel {
  const factory _AnnualReportModel(
      {required final String symbol,
      required final AnnualReport annualReport}) = _$AnnualReportModelImpl;

  factory _AnnualReportModel.fromJson(Map<String, dynamic> json) =
      _$AnnualReportModelImpl.fromJson;

  @override
  String get symbol;
  @override
  AnnualReport get annualReport;

  /// Create a copy of AnnualReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnualReportModelImplCopyWith<_$AnnualReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnnualReport _$AnnualReportFromJson(Map<String, dynamic> json) {
  return _AnnualReport.fromJson(json);
}

/// @nodoc
mixin _$AnnualReport {
  @JsonKey(name: 'fiscalDateEnding')
  String get fiscalDateEnding => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalAssets')
  String get totalAssets => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCurrentAssets')
  String get totalCurrentAssets => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
  String get cashAndEquivalents => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalLiabilities')
  String get totalLiabilities => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentDebt')
  String get currentDebt => throw _privateConstructorUsedError;
  @JsonKey(name: 'longTermDebt')
  String get longTermDebt => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalShareholderEquity')
  String get totalShareholderEquity => throw _privateConstructorUsedError;
  @JsonKey(name: 'retainedEarnings')
  String get retainedEarnings => throw _privateConstructorUsedError;
  @JsonKey(name: 'commonStockSharesOutstanding')
  String get sharesOutstanding => throw _privateConstructorUsedError;

  /// Serializes this AnnualReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnualReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnualReportCopyWith<AnnualReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnualReportCopyWith<$Res> {
  factory $AnnualReportCopyWith(
          AnnualReport value, $Res Function(AnnualReport) then) =
      _$AnnualReportCopyWithImpl<$Res, AnnualReport>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fiscalDateEnding') String fiscalDateEnding,
      @JsonKey(name: 'totalAssets') String totalAssets,
      @JsonKey(name: 'totalCurrentAssets') String totalCurrentAssets,
      @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
      String cashAndEquivalents,
      @JsonKey(name: 'totalLiabilities') String totalLiabilities,
      @JsonKey(name: 'currentDebt') String currentDebt,
      @JsonKey(name: 'longTermDebt') String longTermDebt,
      @JsonKey(name: 'totalShareholderEquity') String totalShareholderEquity,
      @JsonKey(name: 'retainedEarnings') String retainedEarnings,
      @JsonKey(name: 'commonStockSharesOutstanding') String sharesOutstanding});
}

/// @nodoc
class _$AnnualReportCopyWithImpl<$Res, $Val extends AnnualReport>
    implements $AnnualReportCopyWith<$Res> {
  _$AnnualReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnualReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiscalDateEnding = null,
    Object? totalAssets = null,
    Object? totalCurrentAssets = null,
    Object? cashAndEquivalents = null,
    Object? totalLiabilities = null,
    Object? currentDebt = null,
    Object? longTermDebt = null,
    Object? totalShareholderEquity = null,
    Object? retainedEarnings = null,
    Object? sharesOutstanding = null,
  }) {
    return _then(_value.copyWith(
      fiscalDateEnding: null == fiscalDateEnding
          ? _value.fiscalDateEnding
          : fiscalDateEnding // ignore: cast_nullable_to_non_nullable
              as String,
      totalAssets: null == totalAssets
          ? _value.totalAssets
          : totalAssets // ignore: cast_nullable_to_non_nullable
              as String,
      totalCurrentAssets: null == totalCurrentAssets
          ? _value.totalCurrentAssets
          : totalCurrentAssets // ignore: cast_nullable_to_non_nullable
              as String,
      cashAndEquivalents: null == cashAndEquivalents
          ? _value.cashAndEquivalents
          : cashAndEquivalents // ignore: cast_nullable_to_non_nullable
              as String,
      totalLiabilities: null == totalLiabilities
          ? _value.totalLiabilities
          : totalLiabilities // ignore: cast_nullable_to_non_nullable
              as String,
      currentDebt: null == currentDebt
          ? _value.currentDebt
          : currentDebt // ignore: cast_nullable_to_non_nullable
              as String,
      longTermDebt: null == longTermDebt
          ? _value.longTermDebt
          : longTermDebt // ignore: cast_nullable_to_non_nullable
              as String,
      totalShareholderEquity: null == totalShareholderEquity
          ? _value.totalShareholderEquity
          : totalShareholderEquity // ignore: cast_nullable_to_non_nullable
              as String,
      retainedEarnings: null == retainedEarnings
          ? _value.retainedEarnings
          : retainedEarnings // ignore: cast_nullable_to_non_nullable
              as String,
      sharesOutstanding: null == sharesOutstanding
          ? _value.sharesOutstanding
          : sharesOutstanding // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnualReportImplCopyWith<$Res>
    implements $AnnualReportCopyWith<$Res> {
  factory _$$AnnualReportImplCopyWith(
          _$AnnualReportImpl value, $Res Function(_$AnnualReportImpl) then) =
      __$$AnnualReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fiscalDateEnding') String fiscalDateEnding,
      @JsonKey(name: 'totalAssets') String totalAssets,
      @JsonKey(name: 'totalCurrentAssets') String totalCurrentAssets,
      @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
      String cashAndEquivalents,
      @JsonKey(name: 'totalLiabilities') String totalLiabilities,
      @JsonKey(name: 'currentDebt') String currentDebt,
      @JsonKey(name: 'longTermDebt') String longTermDebt,
      @JsonKey(name: 'totalShareholderEquity') String totalShareholderEquity,
      @JsonKey(name: 'retainedEarnings') String retainedEarnings,
      @JsonKey(name: 'commonStockSharesOutstanding') String sharesOutstanding});
}

/// @nodoc
class __$$AnnualReportImplCopyWithImpl<$Res>
    extends _$AnnualReportCopyWithImpl<$Res, _$AnnualReportImpl>
    implements _$$AnnualReportImplCopyWith<$Res> {
  __$$AnnualReportImplCopyWithImpl(
      _$AnnualReportImpl _value, $Res Function(_$AnnualReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnualReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiscalDateEnding = null,
    Object? totalAssets = null,
    Object? totalCurrentAssets = null,
    Object? cashAndEquivalents = null,
    Object? totalLiabilities = null,
    Object? currentDebt = null,
    Object? longTermDebt = null,
    Object? totalShareholderEquity = null,
    Object? retainedEarnings = null,
    Object? sharesOutstanding = null,
  }) {
    return _then(_$AnnualReportImpl(
      fiscalDateEnding: null == fiscalDateEnding
          ? _value.fiscalDateEnding
          : fiscalDateEnding // ignore: cast_nullable_to_non_nullable
              as String,
      totalAssets: null == totalAssets
          ? _value.totalAssets
          : totalAssets // ignore: cast_nullable_to_non_nullable
              as String,
      totalCurrentAssets: null == totalCurrentAssets
          ? _value.totalCurrentAssets
          : totalCurrentAssets // ignore: cast_nullable_to_non_nullable
              as String,
      cashAndEquivalents: null == cashAndEquivalents
          ? _value.cashAndEquivalents
          : cashAndEquivalents // ignore: cast_nullable_to_non_nullable
              as String,
      totalLiabilities: null == totalLiabilities
          ? _value.totalLiabilities
          : totalLiabilities // ignore: cast_nullable_to_non_nullable
              as String,
      currentDebt: null == currentDebt
          ? _value.currentDebt
          : currentDebt // ignore: cast_nullable_to_non_nullable
              as String,
      longTermDebt: null == longTermDebt
          ? _value.longTermDebt
          : longTermDebt // ignore: cast_nullable_to_non_nullable
              as String,
      totalShareholderEquity: null == totalShareholderEquity
          ? _value.totalShareholderEquity
          : totalShareholderEquity // ignore: cast_nullable_to_non_nullable
              as String,
      retainedEarnings: null == retainedEarnings
          ? _value.retainedEarnings
          : retainedEarnings // ignore: cast_nullable_to_non_nullable
              as String,
      sharesOutstanding: null == sharesOutstanding
          ? _value.sharesOutstanding
          : sharesOutstanding // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnualReportImpl implements _AnnualReport {
  const _$AnnualReportImpl(
      {@JsonKey(name: 'fiscalDateEnding') required this.fiscalDateEnding,
      @JsonKey(name: 'totalAssets') required this.totalAssets,
      @JsonKey(name: 'totalCurrentAssets') required this.totalCurrentAssets,
      @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
      required this.cashAndEquivalents,
      @JsonKey(name: 'totalLiabilities') required this.totalLiabilities,
      @JsonKey(name: 'currentDebt') required this.currentDebt,
      @JsonKey(name: 'longTermDebt') required this.longTermDebt,
      @JsonKey(name: 'totalShareholderEquity')
      required this.totalShareholderEquity,
      @JsonKey(name: 'retainedEarnings') required this.retainedEarnings,
      @JsonKey(name: 'commonStockSharesOutstanding')
      required this.sharesOutstanding});

  factory _$AnnualReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnualReportImplFromJson(json);

  @override
  @JsonKey(name: 'fiscalDateEnding')
  final String fiscalDateEnding;
  @override
  @JsonKey(name: 'totalAssets')
  final String totalAssets;
  @override
  @JsonKey(name: 'totalCurrentAssets')
  final String totalCurrentAssets;
  @override
  @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
  final String cashAndEquivalents;
  @override
  @JsonKey(name: 'totalLiabilities')
  final String totalLiabilities;
  @override
  @JsonKey(name: 'currentDebt')
  final String currentDebt;
  @override
  @JsonKey(name: 'longTermDebt')
  final String longTermDebt;
  @override
  @JsonKey(name: 'totalShareholderEquity')
  final String totalShareholderEquity;
  @override
  @JsonKey(name: 'retainedEarnings')
  final String retainedEarnings;
  @override
  @JsonKey(name: 'commonStockSharesOutstanding')
  final String sharesOutstanding;

  @override
  String toString() {
    return 'AnnualReport(fiscalDateEnding: $fiscalDateEnding, totalAssets: $totalAssets, totalCurrentAssets: $totalCurrentAssets, cashAndEquivalents: $cashAndEquivalents, totalLiabilities: $totalLiabilities, currentDebt: $currentDebt, longTermDebt: $longTermDebt, totalShareholderEquity: $totalShareholderEquity, retainedEarnings: $retainedEarnings, sharesOutstanding: $sharesOutstanding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnualReportImpl &&
            (identical(other.fiscalDateEnding, fiscalDateEnding) ||
                other.fiscalDateEnding == fiscalDateEnding) &&
            (identical(other.totalAssets, totalAssets) ||
                other.totalAssets == totalAssets) &&
            (identical(other.totalCurrentAssets, totalCurrentAssets) ||
                other.totalCurrentAssets == totalCurrentAssets) &&
            (identical(other.cashAndEquivalents, cashAndEquivalents) ||
                other.cashAndEquivalents == cashAndEquivalents) &&
            (identical(other.totalLiabilities, totalLiabilities) ||
                other.totalLiabilities == totalLiabilities) &&
            (identical(other.currentDebt, currentDebt) ||
                other.currentDebt == currentDebt) &&
            (identical(other.longTermDebt, longTermDebt) ||
                other.longTermDebt == longTermDebt) &&
            (identical(other.totalShareholderEquity, totalShareholderEquity) ||
                other.totalShareholderEquity == totalShareholderEquity) &&
            (identical(other.retainedEarnings, retainedEarnings) ||
                other.retainedEarnings == retainedEarnings) &&
            (identical(other.sharesOutstanding, sharesOutstanding) ||
                other.sharesOutstanding == sharesOutstanding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fiscalDateEnding,
      totalAssets,
      totalCurrentAssets,
      cashAndEquivalents,
      totalLiabilities,
      currentDebt,
      longTermDebt,
      totalShareholderEquity,
      retainedEarnings,
      sharesOutstanding);

  /// Create a copy of AnnualReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnualReportImplCopyWith<_$AnnualReportImpl> get copyWith =>
      __$$AnnualReportImplCopyWithImpl<_$AnnualReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnualReportImplToJson(
      this,
    );
  }
}

abstract class _AnnualReport implements AnnualReport {
  const factory _AnnualReport(
      {@JsonKey(name: 'fiscalDateEnding')
      required final String fiscalDateEnding,
      @JsonKey(name: 'totalAssets') required final String totalAssets,
      @JsonKey(name: 'totalCurrentAssets')
      required final String totalCurrentAssets,
      @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
      required final String cashAndEquivalents,
      @JsonKey(name: 'totalLiabilities') required final String totalLiabilities,
      @JsonKey(name: 'currentDebt') required final String currentDebt,
      @JsonKey(name: 'longTermDebt') required final String longTermDebt,
      @JsonKey(name: 'totalShareholderEquity')
      required final String totalShareholderEquity,
      @JsonKey(name: 'retainedEarnings') required final String retainedEarnings,
      @JsonKey(name: 'commonStockSharesOutstanding')
      required final String sharesOutstanding}) = _$AnnualReportImpl;

  factory _AnnualReport.fromJson(Map<String, dynamic> json) =
      _$AnnualReportImpl.fromJson;

  @override
  @JsonKey(name: 'fiscalDateEnding')
  String get fiscalDateEnding;
  @override
  @JsonKey(name: 'totalAssets')
  String get totalAssets;
  @override
  @JsonKey(name: 'totalCurrentAssets')
  String get totalCurrentAssets;
  @override
  @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
  String get cashAndEquivalents;
  @override
  @JsonKey(name: 'totalLiabilities')
  String get totalLiabilities;
  @override
  @JsonKey(name: 'currentDebt')
  String get currentDebt;
  @override
  @JsonKey(name: 'longTermDebt')
  String get longTermDebt;
  @override
  @JsonKey(name: 'totalShareholderEquity')
  String get totalShareholderEquity;
  @override
  @JsonKey(name: 'retainedEarnings')
  String get retainedEarnings;
  @override
  @JsonKey(name: 'commonStockSharesOutstanding')
  String get sharesOutstanding;

  /// Create a copy of AnnualReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnualReportImplCopyWith<_$AnnualReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
