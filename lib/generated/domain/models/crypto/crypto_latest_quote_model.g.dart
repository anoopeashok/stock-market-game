// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/crypto/crypto_latest_quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatestCryptoQuoteModelImpl _$$LatestCryptoQuoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LatestCryptoQuoteModelImpl(
      quotes: (json['quotes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, CryptoQuote.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$LatestCryptoQuoteModelImplToJson(
        _$LatestCryptoQuoteModelImpl instance) =>
    <String, dynamic>{
      'quotes': instance.quotes,
    };

_$CryptoQuoteImpl _$$CryptoQuoteImplFromJson(Map<String, dynamic> json) =>
    _$CryptoQuoteImpl(
      askPrice: (json['ap'] as num).toDouble(),
      askSize: (json['as'] as num).toDouble(),
      bidPrice: (json['bp'] as num).toDouble(),
      bidSize: (json['bs'] as num).toDouble(),
      timestamp: DateTime.parse(json['t'] as String),
    );

Map<String, dynamic> _$$CryptoQuoteImplToJson(_$CryptoQuoteImpl instance) =>
    <String, dynamic>{
      'ap': instance.askPrice,
      'as': instance.askSize,
      'bp': instance.bidPrice,
      'bs': instance.bidSize,
      't': instance.timestamp.toIso8601String(),
    };
