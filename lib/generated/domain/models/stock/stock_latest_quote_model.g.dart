// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/stock/stock_latest_quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatestStockQuoteModelImpl _$$LatestStockQuoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LatestStockQuoteModelImpl(
      quotes: (json['quotes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, StockQuote.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$LatestStockQuoteModelImplToJson(
        _$LatestStockQuoteModelImpl instance) =>
    <String, dynamic>{
      'quotes': instance.quotes,
    };

_$StockQuoteImpl _$$StockQuoteImplFromJson(Map<String, dynamic> json) =>
    _$StockQuoteImpl(
      askPrice: (json['ap'] as num).toDouble(),
      askSize: (json['as'] as num).toInt(),
      askExchange: json['ax'] as String,
      bidPrice: (json['bp'] as num).toDouble(),
      bidSize: (json['bs'] as num).toInt(),
      bidExchange: json['bx'] as String,
      conditions: (json['c'] as List<dynamic>).map((e) => e as String).toList(),
      timestamp: DateTime.parse(json['t'] as String),
      tape: json['z'] as String,
    );

Map<String, dynamic> _$$StockQuoteImplToJson(_$StockQuoteImpl instance) =>
    <String, dynamic>{
      'ap': instance.askPrice,
      'as': instance.askSize,
      'ax': instance.askExchange,
      'bp': instance.bidPrice,
      'bs': instance.bidSize,
      'bx': instance.bidExchange,
      'c': instance.conditions,
      't': instance.timestamp.toIso8601String(),
      'z': instance.tape,
    };
