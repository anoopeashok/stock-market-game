// cpi_model.freezed.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/economic_indicators/cpi_model.freezed.dart';
part '../../../generated/domain/models/economic_indicators/cpi_model.g.dart';

@freezed
class CPIModel with _$CPIModel {
  const factory CPIModel({
    required String name,
    required String interval,
    required String unit,
    @JsonKey(fromJson: _limitDataItems) required List<CPIData> data,
  }) = _CPIModel;

  factory CPIModel.fromJson(Map<String, dynamic> json) =>
      _$CPIModelFromJson(json);
}

// Custom JSON converter to limit data items
List<CPIData> _limitDataItems(List<dynamic> json) {
  return json
      .take(10) // Take only first 10 items
      .map((item) => CPIData.fromJson(item as Map<String, dynamic>))
      .toList();
}

@freezed
class CPIData with _$CPIData {
  const factory CPIData({
    required DateTime date,
    required String value,
  }) = _CPIData;

  factory CPIData.fromJson(Map<String, dynamic> json) =>
      _$CPIDataFromJson(json);
}
