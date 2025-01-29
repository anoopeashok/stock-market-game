// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/commodities/oil_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OilPriceModelImpl _$$OilPriceModelImplFromJson(Map<String, dynamic> json) =>
    _$OilPriceModelImpl(
      name: json['name'] as String,
      interval: json['interval'] as String,
      unit: json['unit'] as String,
      data: _limitDataItems(json['data'] as List),
    );

Map<String, dynamic> _$$OilPriceModelImplToJson(_$OilPriceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'unit': instance.unit,
      'data': instance.data,
    };

_$OilPriceDataImpl _$$OilPriceDataImplFromJson(Map<String, dynamic> json) =>
    _$OilPriceDataImpl(
      date: DateTime.parse(json['date'] as String),
      value: _parseValue(json['value'] as String),
    );

Map<String, dynamic> _$$OilPriceDataImplToJson(_$OilPriceDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
