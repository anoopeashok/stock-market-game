import 'package:equatable/equatable.dart';

class StockHoldEntity extends Equatable{
   String name,symbol, image;
    double price, numberOfShares, totalPrice;
    DateTime date;
  StockHoldEntity({
    required  this.name,
    required this.symbol,
    required this.image,
    required this.price,
    required this.numberOfShares,
    required this.totalPrice,
    required this.date
  });
  
  @override
  List<Object?> get props => [name,symbol];

  
}