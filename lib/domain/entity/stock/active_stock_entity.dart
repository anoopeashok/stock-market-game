

import 'package:equatable/equatable.dart';

class ActiveStockEntity extends Equatable{
  String symbol;
  int tradeCount;

  ActiveStockEntity({
    required this.symbol,
    required this.tradeCount,
  });
  
  @override
  List<Object?> get props => [symbol, tradeCount];
  
}