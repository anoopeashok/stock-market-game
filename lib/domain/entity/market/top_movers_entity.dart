

import 'package:equatable/equatable.dart';

class TopMoversEntity extends Equatable{

  String symbol;
  double changePercent,change,price;

  TopMoversEntity({
    required this.symbol,
    required this.price,
    required this.change,
    required this.changePercent,
  });
  
  @override
  List<Object?> get props => [symbol, changePercent];
}