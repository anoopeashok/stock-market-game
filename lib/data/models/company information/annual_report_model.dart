

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/company information/annual_report_model.freezed.dart';
part '../../../generated/domain/models/company information/annual_report_model.g.dart';
@freezed
class AnnualReportModel with _$AnnualReportModel {
  const factory AnnualReportModel({
    required String symbol,
    required AnnualReport annualReport,
  }) = _AnnualReportModel;

  factory AnnualReportModel.fromJson(Map<String, dynamic> json) =>
      _$AnnualReportModelFromJson({
        'symbol': json['symbol'],
        'annualReport': json['annualReports'][0],
      });
}

@freezed
class AnnualReport with _$AnnualReport {
  const factory AnnualReport({
    @JsonKey(name: 'fiscalDateEnding') required String fiscalDateEnding,
    @JsonKey(name: 'totalAssets') required String totalAssets,
    @JsonKey(name: 'totalCurrentAssets') required String totalCurrentAssets,
    @JsonKey(name: 'cashAndCashEquivalentsAtCarryingValue')
    required String cashAndEquivalents,
    @JsonKey(name: 'totalLiabilities') required String totalLiabilities,
    @JsonKey(name: 'currentDebt') required String currentDebt,
    @JsonKey(name: 'longTermDebt') required String longTermDebt,
    @JsonKey(name: 'totalShareholderEquity')
    required String totalShareholderEquity,
    @JsonKey(name: 'retainedEarnings') required String retainedEarnings,
    @JsonKey(name: 'commonStockSharesOutstanding')
    required String sharesOutstanding,
  }) = _AnnualReport;

  factory AnnualReport.fromJson(Map<String, dynamic> json) =>
      _$AnnualReportFromJson(json);
}
