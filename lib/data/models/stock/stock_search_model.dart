

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/models/stock/stock_search_model.freezed.dart';
part '../../../generated/domain/models/stock/stock_search_model.g.dart';

@freezed
class BestMatch with _$BestMatch {
  factory BestMatch({
    @JsonKey(name: '1. symbol') required String symbol,
    @JsonKey(name: '2. name') required String name,
    @JsonKey(name: '4. region') required String region,
  }) = _BestMatch;

  factory BestMatch.fromJson(Map<String, dynamic> json) =>
      _$BestMatchFromJson(json);
}

@freezed
class BestMatchesResponse with _$BestMatchesResponse {
  factory BestMatchesResponse({
    required List<BestMatch> bestMatches,
  }) = _BestMatchesResponse;

  factory BestMatchesResponse.fromJson(Map<String, dynamic> json) =>
      _$BestMatchesResponseFromJson(json);
}
