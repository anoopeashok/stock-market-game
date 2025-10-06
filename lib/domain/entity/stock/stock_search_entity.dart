
import 'package:equatable/equatable.dart';

class StockSearchEntity extends Equatable{
  String name,symbol,region;

  StockSearchEntity({required this.name,required this.region,required this.symbol});


  @override
  List<Object?> get props => [name,symbol,region];
  }