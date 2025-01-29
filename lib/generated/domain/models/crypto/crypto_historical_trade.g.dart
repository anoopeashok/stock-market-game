// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/crypto/crypto_historical_trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoTradeHistoryModelImpl _$$CryptoTradeHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoTradeHistoryModelImpl(
      nextPageToken: json['next_page_token'] as String,
      trades: (json['trades'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Trade.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$CryptoTradeHistoryModelImplToJson(
        _$CryptoTradeHistoryModelImpl instance) =>
    <String, dynamic>{
      'next_page_token': instance.nextPageToken,
      'trades': instance.trades,
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
