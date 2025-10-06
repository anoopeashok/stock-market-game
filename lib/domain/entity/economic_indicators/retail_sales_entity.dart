

import 'package:equatable/equatable.dart';

class RetailSalesEntity extends Equatable{
  String name,interval,unit,value;

  RetailSalesEntity({
    required this.name,
    required this.interval,
    required this.unit,
    required this.value,
  });
  
  @override
  List<Object?> get props => [name, interval, unit, value];
}