// natural_gas_price_model.freezed.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/commodities/gas_price_model.freezed.dart';
part '../../../generated/domain/models/commodities/gas_price_model.g.dart';

@freezed
class NaturalGasPriceModel with _$NaturalGasPriceModel {
  const factory NaturalGasPriceModel({
    required String name,
    required String interval,
    required String unit,
    @JsonKey(fromJson: _limitDataItems) required List<NaturalGasPriceData> data,
  }) = _NaturalGasPriceModel;

  factory NaturalGasPriceModel.fromJson(Map<String, dynamic> json) =>
      _$NaturalGasPriceModelFromJson(json);
}

// Custom JSON converter to limit data items
List<NaturalGasPriceData> _limitDataItems(List<dynamic> json) {
  return json
      .take(10) // Take only first 10 items
      .map((item) => NaturalGasPriceData.fromJson(item as Map<String, dynamic>))
      .toList();
}

@freezed
class NaturalGasPriceData with _$NaturalGasPriceData {
  const factory NaturalGasPriceData({
    required DateTime date,
    @JsonKey(fromJson: _parseValue) required double? value,
  }) = _NaturalGasPriceData;

  factory NaturalGasPriceData.fromJson(Map<String, dynamic> json) =>
      _$NaturalGasPriceDataFromJson(json);
}

// Custom parser for value field that handles "." as null
double? _parseValue(String value) {
  return value == "." ? null : double.parse(value);
}
