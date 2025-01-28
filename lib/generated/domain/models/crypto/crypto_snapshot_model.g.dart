// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/crypto/crypto_snapshot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoSnapshotModelImpl _$$CryptoSnapshotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoSnapshotModelImpl(
      snapshots: (json['snapshots'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, MarketSnapshot.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$CryptoSnapshotModelImplToJson(
        _$CryptoSnapshotModelImpl instance) =>
    <String, dynamic>{
      'snapshots': instance.snapshots,
    };

_$MarketSnapshotImpl _$$MarketSnapshotImplFromJson(Map<String, dynamic> json) =>
    _$MarketSnapshotImpl(
      dailyBar: Bar.fromJson(json['dailyBar'] as Map<String, dynamic>),
      latestQuote: Quote.fromJson(json['latestQuote'] as Map<String, dynamic>),
      latestTrade: Trade.fromJson(json['latestTrade'] as Map<String, dynamic>),
      minuteBar: Bar.fromJson(json['minuteBar'] as Map<String, dynamic>),
      prevDailyBar: Bar.fromJson(json['prevDailyBar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarketSnapshotImplToJson(
        _$MarketSnapshotImpl instance) =>
    <String, dynamic>{
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
      numberOfTrades: (json['n'] as num).toInt(),
      open: (json['o'] as num).toDouble(),
      timestamp: DateTime.parse(json['t'] as String),
      volume: (json['v'] as num).toDouble(),
      volumeWeightedPrice: (json['vw'] as num).toDouble(),
    );

Map<String, dynamic> _$$BarImplToJson(_$BarImpl instance) => <String, dynamic>{
      'c': instance.close,
      'h': instance.high,
      'l': instance.low,
      'n': instance.numberOfTrades,
      'o': instance.open,
      't': instance.timestamp.toIso8601String(),
      'v': instance.volume,
      'vw': instance.volumeWeightedPrice,
    };

_$QuoteImpl _$$QuoteImplFromJson(Map<String, dynamic> json) => _$QuoteImpl(
      askPrice: (json['ap'] as num).toDouble(),
      askSize: (json['as'] as num).toDouble(),
      bidPrice: (json['bp'] as num).toDouble(),
      bidSize: (json['bs'] as num).toDouble(),
      timestamp: DateTime.parse(json['t'] as String),
    );

Map<String, dynamic> _$$QuoteImplToJson(_$QuoteImpl instance) =>
    <String, dynamic>{
      'ap': instance.askPrice,
      'as': instance.askSize,
      'bp': instance.bidPrice,
      'bs': instance.bidSize,
      't': instance.timestamp.toIso8601String(),
    };

_$TradeImpl _$$TradeImplFromJson(Map<String, dynamic> json) => _$TradeImpl(
      id: (json['i'] as num).toInt(),
      price: (json['p'] as num).toDouble(),
      size: (json['s'] as num).toDouble(),
      timestamp: DateTime.parse(json['t'] as String),
      tradeSide: json['tks'] as String,
    );

Map<String, dynamic> _$$TradeImplToJson(_$TradeImpl instance) =>
    <String, dynamic>{
      'i': instance.id,
      'p': instance.price,
      's': instance.size,
      't': instance.timestamp.toIso8601String(),
      'tks': instance.tradeSide,
    };
