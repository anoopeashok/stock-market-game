// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/stock/stock_hold_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockHoldImpl _$$StockHoldImplFromJson(Map<String, dynamic> json) =>
    _$StockHoldImpl(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      numberOfShares: (json['numberOfShares'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$StockHoldImplToJson(_$StockHoldImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'image': instance.image,
      'price': instance.price,
      'numberOfShares': instance.numberOfShares,
      'totalPrice': instance.totalPrice,
      'date': instance.date.toIso8601String(),
    };
