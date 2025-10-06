

// stock_quote.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/stock/stock_latest_quote_model.freezed.dart';
part '../../../generated/domain/models/stock/stock_latest_quote_model.g.dart';

@freezed
class LatestStockQuoteModel with _$LatestStockQuoteModel {
  const factory LatestStockQuoteModel({
    required Map<String, StockQuote> quotes,
  }) = _LatestStockQuoteModel;

  factory LatestStockQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$LatestStockQuoteModelFromJson(json);
}

/// Represents a real-time stock quote with detailed trading information
@freezed
class StockQuote with _$StockQuote {
  const factory StockQuote({
    @JsonKey(name: 'ap') required double askPrice, // Best ask/sell price
    @JsonKey(name: 'as')
    required int askSize, // Number of shares available at ask price
    @JsonKey(name: 'ax')
    required String askExchange, // Exchange code where ask price is quoted
    @JsonKey(name: 'bp') required double bidPrice, // Best bid/buy price
    @JsonKey(name: 'bs')
    required int bidSize, // Number of shares available at bid price
    @JsonKey(name: 'bx')
    required String bidExchange, // Exchange code where bid price is quoted
    @JsonKey(name: 'c')
    required List<String> conditions, // Trading conditions/indicators
    @JsonKey(name: 't') required DateTime timestamp, // Timestamp of the quote
    @JsonKey(name: 'z')
    required String tape, // Tape where the quote was reported
  }) = _StockQuote;

  factory StockQuote.fromJson(Map<String, dynamic> json) =>
      _$StockQuoteFromJson(json);
}

/// Helper enum for common exchange codes
enum Exchange {
  @JsonValue('V')
  NYSE('NYSE Arca'),
  @JsonValue('N')
  NYSENational('NYSE National'),
  @JsonValue('Z')
  BATS('BATS'),
  @JsonValue('Q')
  NASDAQ('NASDAQ'),
  @JsonValue('P')
  Pacific('NYSE Arca Pacific');

  final String displayName;
  const Exchange(this.displayName);
}

/// Helper enum for tape indicators
enum Tape {
  @JsonValue('A')
  tapeA('NYSE (Tape A)'),
  @JsonValue('B')
  tapeB('NYSE Arca & Regional (Tape B)'),
  @JsonValue('C')
  tapeC('NASDAQ (Tape C)');

  final String displayName;
  const Tape(this.displayName);
}


extension StockQuoteExtension on StockQuote {
  /// Calculate the bid-ask spread
  double get spread => askPrice - bidPrice;

  /// Calculate the spread as a percentage
  double get spreadPercentage => (spread / askPrice) * 100;

  /// Check if this is a regular quote
  bool get isRegularQuote => conditions.contains('R');
}
