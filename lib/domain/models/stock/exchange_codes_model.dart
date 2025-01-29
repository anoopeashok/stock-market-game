import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/stock/exchange_codes_model.freezed.dart';
part '../../../generated/domain/models/stock/exchange_codes_model.g.dart';

@freezed
class ExchangeCodesModel with _$ExchangeCodesModel {
  const factory ExchangeCodesModel({
    required Map<String, String> conditions,
  }) = _ExchangeCodesModel;

  factory ExchangeCodesModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeCodesModelFromJson(json);
}
