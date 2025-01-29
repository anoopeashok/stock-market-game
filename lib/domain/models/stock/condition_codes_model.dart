import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/stock/condition_codes_model.freezed.dart';
part '../../../generated/domain/models/stock/condition_codes_model.g.dart';


@freezed
class TradeConditionsModel with _$TradeConditionsModel {
  const factory TradeConditionsModel({
    required Map<String, String> conditions,
  }) = _TradeConditionsModel;

  factory TradeConditionsModel.fromJson(Map<String, dynamic> json) =>
      _$TradeConditionsModelFromJson(json);
}
