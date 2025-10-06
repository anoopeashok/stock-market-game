import 'package:equatable/equatable.dart';

import 'bar_entity.dart';
import 'quote_entity.dart';
import 'trade_entity.dart';

class StockInfoEntity extends Equatable {
  final String name;
  final BarEntity dailyBar;
  final QuoteEntity latestQuote;
  final TradeEntity latestTrade;
  final BarEntity minuteBar;
  final BarEntity prevDailyBar;

  const StockInfoEntity({
    required this.name,
    required this.dailyBar,
    required this.latestQuote,
    required this.latestTrade,
    required this.minuteBar,
    required this.prevDailyBar,
  });

  @override
  List<Object?> get props => [
        name,
        dailyBar,
        latestQuote,
        latestTrade,
        minuteBar,
        prevDailyBar,
      ];
}




