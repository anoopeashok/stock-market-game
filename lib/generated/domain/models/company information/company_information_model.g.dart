// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/company information/company_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyStockInformationImpl _$$CompanyStockInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyStockInformationImpl(
      symbol: json['Symbol'] as String,
      name: json['Name'] as String,
      description: json['Description'] as String,
      exchange: json['Exchange'] as String,
      currency: json['Currency'] as String,
      sector: json['Sector'] as String,
      industry: json['Industry'] as String,
      marketCapitalization: json['MarketCapitalization'] as String,
      peRatio: json['PERatio'] as String,
      dividendPerShare: json['DividendPerShare'] as String,
      dividendYield: json['DividendYield'] as String,
      eps: json['EPS'] as String,
      profitMargin: json['ProfitMargin'] as String,
      returnOnEquity: json['ReturnOnEquityTTM'] as String,
      revenue: json['RevenueTTM'] as String,
      analystTargetPrice: json['AnalystTargetPrice'] as String,
      weekHigh52: json['52WeekHigh'] as String,
      weekLow52: json['52WeekLow'] as String,
      dividendDate: json['DividendDate'] as String,
    );

Map<String, dynamic> _$$CompanyStockInformationImplToJson(
        _$CompanyStockInformationImpl instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'Name': instance.name,
      'Description': instance.description,
      'Exchange': instance.exchange,
      'Currency': instance.currency,
      'Sector': instance.sector,
      'Industry': instance.industry,
      'MarketCapitalization': instance.marketCapitalization,
      'PERatio': instance.peRatio,
      'DividendPerShare': instance.dividendPerShare,
      'DividendYield': instance.dividendYield,
      'EPS': instance.eps,
      'ProfitMargin': instance.profitMargin,
      'ReturnOnEquityTTM': instance.returnOnEquity,
      'RevenueTTM': instance.revenue,
      'AnalystTargetPrice': instance.analystTargetPrice,
      '52WeekHigh': instance.weekHigh52,
      '52WeekLow': instance.weekLow52,
      'DividendDate': instance.dividendDate,
    };
