import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/stock/stock_data_model.freezed.dart';
part '../../../generated/domain/models/stock/stock_data_model.g.dart';

@freezed
class StockData with _$StockData {
  const factory StockData({
    required List<StockInfo> stocks,
  }) = _StockData;

  factory StockData.fromJson(Map<String, dynamic> json) {
    final List<StockInfo> stocks = json.entries.map((entry) {
      final stockInfoJson = Map<String, dynamic>.from(entry.value as Map);
      stockInfoJson['name'] = entry.key;
      return StockInfo.fromJson(stockInfoJson);
    }).toList();

    return StockData(stocks: stocks);
  }
}

@freezed
class StockInfo with _$StockInfo {
  const factory StockInfo({
    required String name,
    required Bar dailyBar,
    required Quote latestQuote,
    required Trade latestTrade,
    required Bar minuteBar,
    required Bar prevDailyBar,
  }) = _StockInfo;

  factory StockInfo.fromJson(Map<String, dynamic> json) =>
      _$StockInfoFromJson(json);
}

@freezed
class Bar with _$Bar {
  const factory Bar({
    @JsonKey(name: 'c') required double close,
    @JsonKey(name: 'h') required double high,
    @JsonKey(name: 'l') required double low,
    @JsonKey(name: 'n') required int trades,
    @JsonKey(name: 'o') required double open,
    required String t,
    @JsonKey(name: 'v') required int volume,
    @JsonKey(name: 'vw') required double vwap,
  }) = _Bar;

  factory Bar.fromJson(Map<String, dynamic> json) => _$BarFromJson(json);
}

@freezed
class Quote with _$Quote {
  const factory Quote({
    @JsonKey(name: 'ap') required double askPrice,
    @JsonKey(name: 'as') required int askSize,
    @JsonKey(name: 'ax') required String askExchange,
    @JsonKey(name: 'bp') required double bidPrice,
    @JsonKey(name: 'bs') required int bidSize,
    @JsonKey(name: 'bx') required String bidExchange,
    required List<String> c,
    required String t,
    required String z,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}

@freezed
class Trade with _$Trade {
  const factory Trade({
    required List<String> c,
    required int i,
    @JsonKey(name: 'p') required double price,
    @JsonKey(name: 's') required int size,
    required String t,
    @JsonKey(name: 'x') required String exchange,
    required String z,
  }) = _Trade;

  factory Trade.fromJson(Map<String, dynamic> json) => _$TradeFromJson(json);
}


