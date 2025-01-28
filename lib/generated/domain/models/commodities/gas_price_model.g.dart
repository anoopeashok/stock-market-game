// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/commodities/gas_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NaturalGasPriceModelImpl _$$NaturalGasPriceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NaturalGasPriceModelImpl(
      name: json['name'] as String,
      interval: json['interval'] as String,
      unit: json['unit'] as String,
      data: _limitDataItems(json['data'] as List),
    );

Map<String, dynamic> _$$NaturalGasPriceModelImplToJson(
        _$NaturalGasPriceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'unit': instance.unit,
      'data': instance.data,
    };

_$NaturalGasPriceDataImpl _$$NaturalGasPriceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NaturalGasPriceDataImpl(
      date: DateTime.parse(json['date'] as String),
      value: _parseValue(json['value'] as String),
    );

Map<String, dynamic> _$$NaturalGasPriceDataImplToJson(
        _$NaturalGasPriceDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
