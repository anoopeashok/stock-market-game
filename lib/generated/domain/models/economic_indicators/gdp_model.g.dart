// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/economic_indicators/gdp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GdpModelImpl _$$GdpModelImplFromJson(Map<String, dynamic> json) =>
    _$GdpModelImpl(
      name: json['name'] as String,
      interval: json['interval'] as String,
      unit: json['unit'] as String,
      data: _limitDataItems(json['data'] as List),
    );

Map<String, dynamic> _$$GdpModelImplToJson(_$GdpModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'unit': instance.unit,
      'data': instance.data,
    };

_$GdpDataPointImpl _$$GdpDataPointImplFromJson(Map<String, dynamic> json) =>
    _$GdpDataPointImpl(
      date: json['date'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$GdpDataPointImplToJson(_$GdpDataPointImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'value': instance.value,
    };
