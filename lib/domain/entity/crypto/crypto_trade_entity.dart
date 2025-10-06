import 'package:equatable/equatable.dart';

class CryptoTradeEntity extends Equatable{
  final int id;
  final double price;
  final double size;
  final DateTime timestamp;
  final String tradeSide;

  const CryptoTradeEntity({
    required this.id,
    required this.price,
    required this.size,
    required this.timestamp,
    required this.tradeSide,
  });
  
  @override
  List<Object?> get props => [id, price, size, timestamp, tradeSide];
}