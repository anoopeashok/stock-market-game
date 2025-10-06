// ignore_for_file: invalid_annotation_target


import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/economic_indicators/retail_sales_model.freezed.dart';
part '../../../generated/domain/models/economic_indicators/retail_sales_model.g.dart';


@freezed
class RetailSalesModel with _$RetailSalesModel {
  const factory RetailSalesModel({
    required String name,
    required String interval,
    required String unit,
    @JsonKey(fromJson: _limitDataItems) required List<RetailSalesData> data,
  }) = _RetailSalesModel;

  factory RetailSalesModel.fromJson(Map<String, dynamic> json) =>
      _$RetailSalesModelFromJson(json);
}

// Custom JSON converter to limit data items
List<RetailSalesData> _limitDataItems(List<dynamic> json) {
  return json
      .take(10) // Take only first 10 items
      .map((item) => RetailSalesData.fromJson(item as Map<String, dynamic>))
      .toList();
}

@freezed
class RetailSalesData with _$RetailSalesData {
  const factory RetailSalesData({
    required DateTime date,
    required String value,
  }) = _RetailSalesData;

  factory RetailSalesData.fromJson(Map<String, dynamic> json) =>
      _$RetailSalesDataFromJson(json);
}
