import 'package:equatable/equatable.dart';
import 'package:stock_market_game/data/models/crypto/crypto_latest_quote_model.dart';
import 'package:stock_market_game/domain/entity/crypto/crypto_bar_entity.dart';
import 'package:stock_market_game/domain/entity/crypto/crypto_trade_entity.dart';

class CryptoSnapshotEntity extends Equatable {
  final CryptoBarEntity dailyBar;
  final CryptoQuote latestQuote;
  final CryptoTradeEntity latestTrade;
  final CryptoBarEntity minuteBar;
  final CryptoBarEntity prevDailyBar;

  const CryptoSnapshotEntity({
    required this.dailyBar,
    required this.latestQuote,
    required this.latestTrade,
    required this.minuteBar,
    required this.prevDailyBar,
  });
  
  @override
  List<Object?> get props => [
    dailyBar,
    latestQuote,
    latestTrade,
    minuteBar,
    prevDailyBar,
  ];
}