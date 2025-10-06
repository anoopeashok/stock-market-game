
import 'package:equatable/equatable.dart';

class TradeEntity extends Equatable {
  final List<String> conditions;
  final int id;
  final double price;
  final int size;
  final String timestamp;
  final String exchange;
  final String tape;

  const TradeEntity({
    required this.conditions,
    required this.id,
    required this.price,
    required this.size,
    required this.timestamp,
    required this.exchange,
    required this.tape,
  });

  @override
  List<Object?> get props => [
        conditions,
        id,
        price,
        size,
        timestamp,
        exchange,
        tape,
      ];
}