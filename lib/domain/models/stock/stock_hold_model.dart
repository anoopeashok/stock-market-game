import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part '../../../generated/domain/models/stock/stock_hold_model.freezed.dart';
part '../../../generated/domain/models/stock/stock_hold_model.g.dart';

@freezed
class StockHold with _$StockHold {
  factory StockHold({
    required String name,
    required String symbol,
    required String image,
    required double price,
    required double numberOfShares,
    required double totalPrice,
    required DateTime date
  }) = _StockHold;

  factory StockHold.fromJson(Map<String, dynamic> json) => _$StockHoldFromJson(json);
}
