import 'package:equatable/equatable.dart';

class CryptoBarEntity extends Equatable{
  final double close;
  final double high;
  final double low;
  final int numberOfTrades;
  final double open;
  final DateTime timestamp;
  final double volume;
  final double volumeWeightedPrice;

  const CryptoBarEntity({
    required this.close,
    required this.high,
    required this.low,
    required this.numberOfTrades,
    required this.open,
    required this.timestamp,
    required this.volume,
    required this.volumeWeightedPrice,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}