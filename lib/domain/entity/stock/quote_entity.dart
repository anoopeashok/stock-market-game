import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final double askPrice;
  final int askSize;
  final String askExchange;
  final double bidPrice;
  final int bidSize;
  final String bidExchange;
  final List<String> conditions;
  final String timestamp;
  final String tape;

  const QuoteEntity({
    required this.askPrice,
    required this.askSize,
    required this.askExchange,
    required this.bidPrice,
    required this.bidSize,
    required this.bidExchange,
    required this.conditions,
    required this.timestamp,
    required this.tape,
  });

  @override
  List<Object?> get props => [
        askPrice,
        askSize,
        askExchange,
        bidPrice,
        bidSize,
        bidExchange,
        conditions,
        timestamp,
        tape,
      ];
}