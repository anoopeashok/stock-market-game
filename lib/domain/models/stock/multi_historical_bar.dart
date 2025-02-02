import 'package:stock_market_game/domain/models/stock/historical_bar.dart';

class MultiHistoricalBar {
  List<HistoricalBarDataModel> historicalData;

  MultiHistoricalBar({required this.historicalData});

  factory MultiHistoricalBar.fromJson(Map<String, dynamic> json) =>
      MultiHistoricalBar(
          historicalData: List.from(json['bars'].entries.map(
              (item) => HistoricalBarDataModel.fromMap(item.key, item.value))));
}
