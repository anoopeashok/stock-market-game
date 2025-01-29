// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/economic_indicators/cpi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CPIModelImpl _$$CPIModelImplFromJson(Map<String, dynamic> json) =>
    _$CPIModelImpl(
      name: json['name'] as String,
      interval: json['interval'] as String,
      unit: json['unit'] as String,
      data: _limitDataItems(json['data'] as List),
    );

Map<String, dynamic> _$$CPIModelImplToJson(_$CPIModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'unit': instance.unit,
      'data': instance.data,
    };

_$CPIDataImpl _$$CPIDataImplFromJson(Map<String, dynamic> json) =>
    _$CPIDataImpl(
      date: DateTime.parse(json['date'] as String),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$CPIDataImplToJson(_$CPIDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
