// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/company information/annual_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnualReportModelImpl _$$AnnualReportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnualReportModelImpl(
      symbol: json['symbol'] as String,
      annualReport:
          AnnualReport.fromJson(json['annualReport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnnualReportModelImplToJson(
        _$AnnualReportModelImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'annualReport': instance.annualReport,
    };

_$AnnualReportImpl _$$AnnualReportImplFromJson(Map<String, dynamic> json) =>
    _$AnnualReportImpl(
      fiscalDateEnding: json['fiscalDateEnding'] as String,
      totalAssets: json['totalAssets'] as String,
      totalCurrentAssets: json['totalCurrentAssets'] as String,
      cashAndEquivalents:
          json['cashAndCashEquivalentsAtCarryingValue'] as String,
      totalLiabilities: json['totalLiabilities'] as String,
      currentDebt: json['currentDebt'] as String,
      longTermDebt: json['longTermDebt'] as String,
      totalShareholderEquity: json['totalShareholderEquity'] as String,
      retainedEarnings: json['retainedEarnings'] as String,
      sharesOutstanding: json['commonStockSharesOutstanding'] as String,
    );

Map<String, dynamic> _$$AnnualReportImplToJson(_$AnnualReportImpl instance) =>
    <String, dynamic>{
      'fiscalDateEnding': instance.fiscalDateEnding,
      'totalAssets': instance.totalAssets,
      'totalCurrentAssets': instance.totalCurrentAssets,
      'cashAndCashEquivalentsAtCarryingValue': instance.cashAndEquivalents,
      'totalLiabilities': instance.totalLiabilities,
      'currentDebt': instance.currentDebt,
      'longTermDebt': instance.longTermDebt,
      'totalShareholderEquity': instance.totalShareholderEquity,
      'retainedEarnings': instance.retainedEarnings,
      'commonStockSharesOutstanding': instance.sharesOutstanding,
    };
