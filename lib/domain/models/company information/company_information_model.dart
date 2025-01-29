// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/company information/company_information_model.freezed.dart';
part '../../../generated/domain/models/company information/company_information_model.g.dart';
@freezed
class CompanyInformation with _$CompanyInformation {
  const factory CompanyInformation({
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'Exchange') required String exchange,
    @JsonKey(name: 'Currency') required String currency,
    @JsonKey(name: 'Sector') required String sector,
    @JsonKey(name: 'Industry') required String industry,
    @JsonKey(name: 'MarketCapitalization') required String marketCapitalization,
    @JsonKey(name: 'PERatio') required String peRatio,
    @JsonKey(name: 'DividendPerShare') required String dividendPerShare,
    @JsonKey(name: 'DividendYield') required String dividendYield,
    @JsonKey(name: 'EPS') required String eps,
    @JsonKey(name: 'ProfitMargin') required String profitMargin,
    @JsonKey(name: 'ReturnOnEquityTTM') required String returnOnEquity,
    @JsonKey(name: 'RevenueTTM') required String revenue,
    @JsonKey(name: 'AnalystTargetPrice') required String analystTargetPrice,
    @JsonKey(name: '52WeekHigh') required String weekHigh52,
    @JsonKey(name: '52WeekLow') required String weekLow52,
    @JsonKey(name: 'DividendDate') required String dividendDate,
  }) = _CompanyInformation;

  factory CompanyInformation.fromJson(Map<String, dynamic> json) =>
      _$CompanyInformationFromJson(json);
}
