
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/economic_indicators/gdp_model.freezed.dart';
part '../../../generated/domain/models/economic_indicators/gdp_model.g.dart';

@freezed
class GdpModel with _$GdpModel {
  const factory GdpModel({
    required String name,
    required String interval,
    required String unit,
    @JsonKey(fromJson: _limitDataItems) required List<GdpDataPoint> data,
  }) = _GdpModel;

  factory GdpModel.fromJson(Map<String, dynamic> json) =>
      _$GdpModelFromJson(json);
}

List<GdpDataPoint> _limitDataItems(List<dynamic> json) {
  return json
      .take(1) // Take only first 10 items
      .map((item) => GdpDataPoint.fromJson(item as Map<String, dynamic>))
      .toList();
}

@freezed
class GdpDataPoint with _$GdpDataPoint {
  const factory GdpDataPoint({
    required String date,
    required String value,
  }) = _GdpDataPoint;

  factory GdpDataPoint.fromJson(Map<String, dynamic> json) =>
      _$GdpDataPointFromJson(json);
}
