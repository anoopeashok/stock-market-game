import 'package:equatable/equatable.dart';

class ActiveStockEntity extends Equatable{
  String symbol;
  int tradeCount,volume;

  ActiveStockEntity({
    required this.symbol,
    required this.volume,
    required this.tradeCount,
  });
  
  @override
  List<Object?> get props => [symbol,volume, tradeCount];
}