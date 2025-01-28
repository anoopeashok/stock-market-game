// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../domain/models/economic_indicators/retail_sales_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetailSalesModelImpl _$$RetailSalesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RetailSalesModelImpl(
      name: json['name'] as String,
      interval: json['interval'] as String,
      unit: json['unit'] as String,
      data: _limitDataItems(json['data'] as List),
    );

Map<String, dynamic> _$$RetailSalesModelImplToJson(
        _$RetailSalesModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'unit': instance.unit,
      'data': instance.data,
    };

_$RetailSalesDataImpl _$$RetailSalesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RetailSalesDataImpl(
      date: DateTime.parse(json['date'] as String),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$RetailSalesDataImplToJson(
        _$RetailSalesDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
