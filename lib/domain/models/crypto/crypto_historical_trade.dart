// trades_response.freezed.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/crypto/crypto_historical_trade.freezed.dart';
part '../../../generated/domain/models/crypto/crypto_historical_trade.g.dart';

@freezed
class CryptoTradeHistoryModel with _$CryptoTradeHistoryModel {
  const factory CryptoTradeHistoryModel({
    @JsonKey(name: 'next_page_token') required String nextPageToken,
    required Map<String, List<Trade>> trades,
  }) = _CryptoTradeHistoryModel;

  factory CryptoTradeHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoTradeHistoryModelFromJson(json);
}

@freezed
class Trade with _$Trade {
  const factory Trade({
    @JsonKey(name: 'i') required int id,
    @JsonKey(name: 'p') required double price,
    @JsonKey(name: 's') required double size,
    @JsonKey(name: 't') required DateTime timestamp,
    @JsonKey(name: 'tks') required String tradeSide,
  }) = _Trade;

  factory Trade.fromJson(Map<String, dynamic> json) => _$TradeFromJson(json);
}
