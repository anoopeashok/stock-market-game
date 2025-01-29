// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/stock/stock_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BestMatchImpl _$$BestMatchImplFromJson(Map<String, dynamic> json) =>
    _$BestMatchImpl(
      symbol: json['1. symbol'] as String,
      name: json['2. name'] as String,
      region: json['4. region'] as String,
    );

Map<String, dynamic> _$$BestMatchImplToJson(_$BestMatchImpl instance) =>
    <String, dynamic>{
      '1. symbol': instance.symbol,
      '2. name': instance.name,
      '4. region': instance.region,
    };

_$BestMatchesResponseImpl _$$BestMatchesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BestMatchesResponseImpl(
      bestMatches: (json['bestMatches'] as List<dynamic>)
          .map((e) => BestMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BestMatchesResponseImplToJson(
        _$BestMatchesResponseImpl instance) =>
    <String, dynamic>{
      'bestMatches': instance.bestMatches,
    };
