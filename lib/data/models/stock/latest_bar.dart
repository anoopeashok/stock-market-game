import 'stock_data_model.dart';

class LatestBarDataModel {
  Bar bars;
  String symbol;
  LatestBarDataModel({
    required this.bars,
    required this.symbol,
    String? nextPageToken,
  });

  factory LatestBarDataModel.fromJson(Map<String, dynamic> json) {
    String symbol = json['bars'].entries.first.key;
    Map<String,dynamic> bar = json['bars'].entries.first.value;

    return LatestBarDataModel(
        bars: Bar.fromJson(bar), symbol: symbol, nextPageToken: json['next_page_token']);
  }
}
