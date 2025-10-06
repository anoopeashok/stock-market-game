
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/economic_indicators/unemployment_rate.freezed.dart';
part '../../../generated/domain/models/economic_indicators/unemployment_rate.g.dart';

@freezed
class UnemploymentRateModel with _$UnemploymentRateModel {
  const factory UnemploymentRateModel({
    required String name,
    required String interval,
    required String unit,
    required List<UnemploymentRateDataPoint> data,
  }) = _UnemploymentRateModel;

  factory UnemploymentRateModel.fromJson(Map<String, dynamic> json) =>
      _$UnemploymentRateModelFromJson(json);
}

@freezed
class UnemploymentRateDataPoint with _$UnemploymentRateDataPoint {
  const factory UnemploymentRateDataPoint({
    required String date,
    required String value,
  }) = _UnemploymentRateDataPoint;

  factory UnemploymentRateDataPoint.fromJson(Map<String, dynamic> json) =>
      _$UnemploymentRateDataPointFromJson(json);
}
