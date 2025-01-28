// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/economic_indicators/unemployment_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnemploymentRateModelImpl _$$UnemploymentRateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UnemploymentRateModelImpl(
      name: json['name'] as String,
      interval: json['interval'] as String,
      unit: json['unit'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              UnemploymentRateDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UnemploymentRateModelImplToJson(
        _$UnemploymentRateModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'unit': instance.unit,
      'data': instance.data,
    };

_$UnemploymentRateDataPointImpl _$$UnemploymentRateDataPointImplFromJson(
        Map<String, dynamic> json) =>
    _$UnemploymentRateDataPointImpl(
      date: json['date'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$UnemploymentRateDataPointImplToJson(
        _$UnemploymentRateDataPointImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'value': instance.value,
    };
