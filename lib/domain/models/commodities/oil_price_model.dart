// oil_price_model.freezed.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/commodities/oil_price_model.freezed.dart';
part '../../../generated/domain/models/commodities/oil_price_model.g.dart';

@freezed
class OilPriceModel with _$OilPriceModel {
  const factory OilPriceModel({
    required String name,
    required String interval,
    required String unit,
    @JsonKey(fromJson: _limitDataItems) required List<OilPriceData> data,
  }) = _OilPriceModel;

  factory OilPriceModel.fromJson(Map<String, dynamic> json) =>
      _$OilPriceModelFromJson(json);
}

// Custom JSON converter to limit data items
List<OilPriceData> _limitDataItems(List<dynamic> json) {
  return json
      .take(10) // Take only first 10 items
      .map((item) => OilPriceData.fromJson(item as Map<String, dynamic>))
      .toList();
}

@freezed
class OilPriceData with _$OilPriceData {
  const factory OilPriceData({
    required DateTime date,
    @JsonKey(fromJson: _parseValue) required double? value,
  }) = _OilPriceData;

  factory OilPriceData.fromJson(Map<String, dynamic> json) =>
      _$OilPriceDataFromJson(json);
}

// Custom parser for value field that handles "." as null
double? _parseValue(String value) {
  return value == "." ? null : double.parse(value);
}
