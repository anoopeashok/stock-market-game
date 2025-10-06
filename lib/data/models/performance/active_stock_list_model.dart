import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/performance/active_stock_list_model.freezed.dart';
part '../../../generated/domain/models/performance/active_stock_list_model.g.dart';

@freezed
class ActiveStockListModel with _$ActiveStockListModel {
  const factory ActiveStockListModel({
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,
    @JsonKey(name: 'most_actives') required List<ActiveStockItem> stockList}) = _ActiveStockListModel;

  factory ActiveStockListModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveStockListModelFromJson(json);
}


@freezed
class ActiveStockItem with _$ActiveStockItem {
  const factory ActiveStockItem(
      {required String symbol,
      @JsonKey(name: 'trade_count') required int tradeCount,
      required int volume}) = _ActiveStockItem;

  factory ActiveStockItem.fromJson(Map<String, dynamic> json) =>
      _$ActiveStockItemFromJson(json);
}
