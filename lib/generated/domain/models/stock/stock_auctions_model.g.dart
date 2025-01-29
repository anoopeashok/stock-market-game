// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/stock/stock_auctions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionResponseImpl _$$AuctionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuctionResponseImpl(
      auctions: (json['auctions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Auction.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      nextPageToken: json['next_page_token'] as String?,
    );

Map<String, dynamic> _$$AuctionResponseImplToJson(
        _$AuctionResponseImpl instance) =>
    <String, dynamic>{
      'auctions': instance.auctions,
      'next_page_token': instance.nextPageToken,
    };

_$AuctionImpl _$$AuctionImplFromJson(Map<String, dynamic> json) =>
    _$AuctionImpl(
      c: (json['c'] as List<dynamic>)
          .map((e) => Trade.fromJson(e as Map<String, dynamic>))
          .toList(),
      o: (json['o'] as List<dynamic>)
          .map((e) => Trade.fromJson(e as Map<String, dynamic>))
          .toList(),
      d: json['d'] as String,
    );

Map<String, dynamic> _$$AuctionImplToJson(_$AuctionImpl instance) =>
    <String, dynamic>{
      'c': instance.c,
      'o': instance.o,
      'd': instance.d,
    };

_$TradeImpl _$$TradeImplFromJson(Map<String, dynamic> json) => _$TradeImpl(
      c: json['c'] as String,
      p: (json['p'] as num).toDouble(),
      s: (json['s'] as num).toInt(),
      t: json['t'] as String,
      x: json['x'] as String,
    );

Map<String, dynamic> _$$TradeImplToJson(_$TradeImpl instance) =>
    <String, dynamic>{
      'c': instance.c,
      'p': instance.p,
      's': instance.s,
      't': instance.t,
      'x': instance.x,
    };
