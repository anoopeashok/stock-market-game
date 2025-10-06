// crypto_quote.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/crypto/crypto_latest_quote_model.freezed.dart';
part '../../../generated/domain/models/crypto/crypto_latest_quote_model.g.dart';

@freezed
class LatestCryptoQuoteModel with _$LatestCryptoQuoteModel {
  const factory LatestCryptoQuoteModel({
    required Map<String, CryptoQuote> quotes,
  }) = _LatestCryptoQuoteModel;

  factory LatestCryptoQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$LatestCryptoQuoteModelFromJson(json);
}

@freezed
class CryptoQuote with _$CryptoQuote {
  const factory CryptoQuote({
    @JsonKey(name: 'ap') required double askPrice, // Best ask/sell price
    @JsonKey(name: 'as')
    required double askSize, // Amount available at ask price
    @JsonKey(name: 'bp') required double bidPrice, // Best bid/buy price
    @JsonKey(name: 'bs')
    required double bidSize, // Amount available at bid price
    @JsonKey(name: 't') required DateTime timestamp, // Timestamp of the quote
  }) = _CryptoQuote;

  factory CryptoQuote.fromJson(Map<String, dynamic> json) =>
      _$CryptoQuoteFromJson(json);
}

extension CryptoQuoteExtension on CryptoQuote {
  /// Calculate the bid-ask spread in currency units
  double get spread => askPrice - bidPrice;

  /// Calculate the bid-ask spread as a percentage
  double get spreadPercentage => (spread / askPrice) * 100;

  /// Calculate the mid price between bid and ask
  double get midPrice => (askPrice + bidPrice) / 2;
}
