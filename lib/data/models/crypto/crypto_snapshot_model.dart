// market_snapshot.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/crypto/crypto_snapshot_model.freezed.dart';
part '../../../generated/domain/models/crypto/crypto_snapshot_model.g.dart';

@freezed
class CryptoSnapshotModel with _$CryptoSnapshotModel {
  const factory CryptoSnapshotModel({
    required Map<String, MarketSnapshot> snapshots,
  }) = _CryptoSnapshotModel;

  factory CryptoSnapshotModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoSnapshotModelFromJson(json);
}

@freezed
class MarketSnapshot with _$MarketSnapshot {
  const factory MarketSnapshot({
    @JsonKey(name: 'dailyBar') required Bar dailyBar,
    @JsonKey(name: 'latestQuote') required Quote latestQuote,
    @JsonKey(name: 'latestTrade') required Trade latestTrade,
    @JsonKey(name: 'minuteBar') required Bar minuteBar,
    @JsonKey(name: 'prevDailyBar') required Bar prevDailyBar,
  }) = _MarketSnapshot;

  factory MarketSnapshot.fromJson(Map<String, dynamic> json) =>
      _$MarketSnapshotFromJson(json);
}

@freezed
class Bar with _$Bar {
  const factory Bar({
    @JsonKey(name: 'c') required double close,
    @JsonKey(name: 'h') required double high,
    @JsonKey(name: 'l') required double low,
    @JsonKey(name: 'n') required int numberOfTrades,
    @JsonKey(name: 'o') required double open,
    @JsonKey(name: 't') required DateTime timestamp,
    @JsonKey(name: 'v') required double volume,
    @JsonKey(name: 'vw') required double volumeWeightedPrice,
  }) = _Bar;

  factory Bar.fromJson(Map<String, dynamic> json) => _$BarFromJson(json);
}

@freezed
class Quote with _$Quote {
  const factory Quote({
    @JsonKey(name: 'ap') required double askPrice,
    @JsonKey(name: 'as') required double askSize,
    @JsonKey(name: 'bp') required double bidPrice,
    @JsonKey(name: 'bs') required double bidSize,
    @JsonKey(name: 't') required DateTime timestamp,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
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
