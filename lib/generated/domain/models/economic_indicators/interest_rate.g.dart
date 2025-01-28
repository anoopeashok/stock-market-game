// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/economic_indicators/interest_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FederalFundsRateModelImpl _$$FederalFundsRateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FederalFundsRateModelImpl(
      name: json['name'] as String,
      interval: json['interval'] as String,
      unit: json['unit'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              FederalFundsRateDataPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FederalFundsRateModelImplToJson(
        _$FederalFundsRateModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'unit': instance.unit,
      'data': instance.data,
    };

_$FederalFundsRateDataPointImpl _$$FederalFundsRateDataPointImplFromJson(
        Map<String, dynamic> json) =>
    _$FederalFundsRateDataPointImpl(
      date: json['date'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$FederalFundsRateDataPointImplToJson(
        _$FederalFundsRateDataPointImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'value': instance.value,
    };
