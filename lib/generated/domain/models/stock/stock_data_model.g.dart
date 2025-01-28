// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/stock/stock_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockInfoImpl _$$StockInfoImplFromJson(Map<String, dynamic> json) =>
    _$StockInfoImpl(
      name: json['name'] as String,
      dailyBar: Bar.fromJson(json['dailyBar'] as Map<String, dynamic>),
      latestQuote: Quote.fromJson(json['latestQuote'] as Map<String, dynamic>),
      latestTrade: Trade.fromJson(json['latestTrade'] as Map<String, dynamic>),
      minuteBar: Bar.fromJson(json['minuteBar'] as Map<String, dynamic>),
      prevDailyBar: Bar.fromJson(json['prevDailyBar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StockInfoImplToJson(_$StockInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dailyBar': instance.dailyBar,
      'latestQuote': instance.latestQuote,
      'latestTrade': instance.latestTrade,
      'minuteBar': instance.minuteBar,
      'prevDailyBar': instance.prevDailyBar,
    };

_$BarImpl _$$BarImplFromJson(Map<String, dynamic> json) => _$BarImpl(
      close: (json['c'] as num).toDouble(),
      high: (json['h'] as num).toDouble(),
      low: (json['l'] as num).toDouble(),
      trades: (json['n'] as num).toInt(),
      open: (json['o'] as num).toDouble(),
      t: json['t'] as String,
      volume: (json['v'] as num).toInt(),
      vwap: (json['vw'] as num).toDouble(),
    );

Map<String, dynamic> _$$BarImplToJson(_$BarImpl instance) => <String, dynamic>{
      'c': instance.close,
      'h': instance.high,
      'l': instance.low,
      'n': instance.trades,
      'o': instance.open,
      't': instance.t,
      'v': instance.volume,
      'vw': instance.vwap,
    };

_$QuoteImpl _$$QuoteImplFromJson(Map<String, dynamic> json) => _$QuoteImpl(
      askPrice: (json['ap'] as num).toDouble(),
      askSize: (json['as'] as num).toInt(),
      askExchange: json['ax'] as String,
      bidPrice: (json['bp'] as num).toDouble(),
      bidSize: (json['bs'] as num).toInt(),
      bidExchange: json['bx'] as String,
      c: (json['c'] as List<dynamic>).map((e) => e as String).toList(),
      t: json['t'] as String,
      z: json['z'] as String,
    );

Map<String, dynamic> _$$QuoteImplToJson(_$QuoteImpl instance) =>
    <String, dynamic>{
      'ap': instance.askPrice,
      'as': instance.askSize,
      'ax': instance.askExchange,
      'bp': instance.bidPrice,
      'bs': instance.bidSize,
      'bx': instance.bidExchange,
      'c': instance.c,
      't': instance.t,
      'z': instance.z,
    };

_$TradeImpl _$$TradeImplFromJson(Map<String, dynamic> json) => _$TradeImpl(
      c: (json['c'] as List<dynamic>).map((e) => e as String).toList(),
      i: (json['i'] as num).toInt(),
      price: (json['p'] as num).toDouble(),
      size: (json['s'] as num).toInt(),
      t: json['t'] as String,
      exchange: json['x'] as String,
      z: json['z'] as String,
    );

Map<String, dynamic> _$$TradeImplToJson(_$TradeImpl instance) =>
    <String, dynamic>{
      'c': instance.c,
      'i': instance.i,
      'p': instance.price,
      's': instance.size,
      't': instance.t,
      'x': instance.exchange,
      'z': instance.z,
    };
