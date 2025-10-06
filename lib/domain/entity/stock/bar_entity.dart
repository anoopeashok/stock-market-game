import 'package:equatable/equatable.dart';

class BarEntity extends Equatable {
  final double close;
  final double high;
  final double low;
  final int trades;
  final double open;
  final String timestamp;
  final int volume;
  final double vwap;

  const BarEntity({
    required this.close,
    required this.high,
    required this.low,
    required this.trades,
    required this.open,
    required this.timestamp,
    required this.volume,
    required this.vwap,
  });

  @override
  List<Object?> get props => [
        close,
        high,
        low,
        trades,
        open,
        timestamp,
        volume,
        vwap,
      ];
}