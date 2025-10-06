import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../generated/domain/models/stock/stock_auctions_model.freezed.dart';
part '../../../generated/domain/models/stock/stock_auctions_model.g.dart';

@freezed
class AuctionResponse with _$AuctionResponse {
  const factory AuctionResponse({
    required Map<String, List<Auction>> auctions,
    @JsonKey(name: 'next_page_token') String? nextPageToken,
  }) = _AuctionResponse;

  factory AuctionResponse.fromJson(Map<String, dynamic> json) =>
      _$AuctionResponseFromJson(json);
}

@freezed
class Auction with _$Auction {
  const factory Auction({
    required List<Trade> c, // Closing auction data
    required List<Trade> o, // Opening auction data
    required String d, // Date
  }) = _Auction;

  factory Auction.fromJson(Map<String, dynamic> json) =>
      _$AuctionFromJson(json);
}

@freezed
class Trade with _$Trade {
  const factory Trade({
    required String c, // Condition
    required double p, // Price
    required int s, // Size
    required String t, // Timestamp
    required String x, // Exchange code
  }) = _Trade;

  factory Trade.fromJson(Map<String, dynamic> json) => _$TradeFromJson(json);
}
