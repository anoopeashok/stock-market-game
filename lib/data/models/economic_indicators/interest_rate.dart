
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/economic_indicators/interest_rate.freezed.dart';
part '../../../generated/domain/models/economic_indicators/interest_rate.g.dart';

@freezed
class FederalFundsRateModel with _$FederalFundsRateModel {
  const factory FederalFundsRateModel({
    required String name,
    required String interval,
    required String unit,
    required List<FederalFundsRateDataPoint> data,
  }) = _FederalFundsRateModel;

  factory FederalFundsRateModel.fromJson(Map<String, dynamic> json) =>
      _$FederalFundsRateModelFromJson(json);
}

@freezed
class FederalFundsRateDataPoint with _$FederalFundsRateDataPoint {
  const factory FederalFundsRateDataPoint({
    required String date,
    required String value,
  }) = _FederalFundsRateDataPoint;

  factory FederalFundsRateDataPoint.fromJson(Map<String, dynamic> json) =>
      _$FederalFundsRateDataPointFromJson(json);
}
