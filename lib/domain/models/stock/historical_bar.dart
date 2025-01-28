import 'package:stock_market_game/domain/models/stock/stock_data_model.dart';

class HistoricalBarDataModel {
  List<Bar> bars;
  String symbol;
  HistoricalBarDataModel({
    required this.bars,
    required this.symbol,
    String? nextPageToken,
  });

  factory HistoricalBarDataModel.fromJson(Map<String, dynamic> json) {
    String symbol = json['bars'].entries.first.key;
    List<dynamic> barList = json['bars'].entries.first.value;
    List<Bar> bars = List<Bar>.from(barList.map((item) => Bar.fromJson(item)));

    return HistoricalBarDataModel(
        bars: bars, symbol: symbol, nextPageToken: json['next_page_token']);
  }
}
