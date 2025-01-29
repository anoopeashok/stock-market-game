
import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/performance/top_movers_stocks_model.freezed.dart';
part '../../../generated/domain/models/performance/top_movers_stocks_model.g.dart';

@freezed
class TopMarketMoversModel with _$TopMarketMoversModel{
  const factory TopMarketMoversModel({
    @JsonKey(name: "last_updated") required DateTime lastUpdated,
    required List<TopMarketMoverItemModel> gainers,
    required List<TopMarketMoverItemModel> losers
  }) = _TopMarketMoversModel;

  factory TopMarketMoversModel.fromJson(Map<String,dynamic> json) => _$TopMarketMoversModelFromJson(json);
}

@freezed
class TopMarketMoverItemModel with _$TopMarketMoverItemModel{

  const factory TopMarketMoverItemModel({required double change,required double price, required String symbol,
  @JsonKey(name: "percent_change") required double percentagechange }) = _TopMarketMoverItemModel;

  factory TopMarketMoverItemModel.fromJson(Map<String,dynamic> json) => _$TopMarketMoverItemModelFromJson(json);
}

