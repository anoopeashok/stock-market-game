// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/performance/active_stock_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveStockListModelImpl _$$ActiveStockListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveStockListModelImpl(
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      stockList: (json['most_actives'] as List<dynamic>)
          .map((e) => ActiveStockItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActiveStockListModelImplToJson(
        _$ActiveStockListModelImpl instance) =>
    <String, dynamic>{
      'last_updated': instance.lastUpdated.toIso8601String(),
      'most_actives': instance.stockList,
    };

_$ActiveStockItemImpl _$$ActiveStockItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveStockItemImpl(
      symbol: json['symbol'] as String,
      tradeCount: (json['trade_count'] as num).toInt(),
      volume: (json['volume'] as num).toInt(),
    );

Map<String, dynamic> _$$ActiveStockItemImplToJson(
        _$ActiveStockItemImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'trade_count': instance.tradeCount,
      'volume': instance.volume,
    };
