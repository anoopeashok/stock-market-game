// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/performance/top_movers_stocks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopMarketMoversModelImpl _$$TopMarketMoversModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopMarketMoversModelImpl(
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      gainers: (json['gainers'] as List<dynamic>)
          .map((e) =>
              TopMarketMoverItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      losers: (json['losers'] as List<dynamic>)
          .map((e) =>
              TopMarketMoverItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopMarketMoversModelImplToJson(
        _$TopMarketMoversModelImpl instance) =>
    <String, dynamic>{
      'last_updated': instance.lastUpdated.toIso8601String(),
      'gainers': instance.gainers,
      'losers': instance.losers,
    };

_$TopMarketMoverItemModelImpl _$$TopMarketMoverItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopMarketMoverItemModelImpl(
      change: (json['change'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      symbol: json['symbol'] as String,
      percentagechange: (json['percent_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$TopMarketMoverItemModelImplToJson(
        _$TopMarketMoverItemModelImpl instance) =>
    <String, dynamic>{
      'change': instance.change,
      'price': instance.price,
      'symbol': instance.symbol,
      'percent_change': instance.percentagechange,
    };
