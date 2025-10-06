import 'package:equatable/equatable.dart';

class CryptoQuoteEntity  extends Equatable{
  final double askPrice; // Best ask/sell price
  final double askSize; // Amount available at ask price
  final double bidPrice; // Best bid/buy price
  final double bidSize; // Amount available at bid price
  final DateTime timestamp; // Timestamp of the quote

  const CryptoQuoteEntity({
    required this.askPrice,
    required this.askSize,
    required this.bidPrice,
    required this.bidSize,
    required this.timestamp,
  });

  /// Calculate the bid-ask spread in currency units
  double get spread => askPrice - bidPrice;

  /// Calculate the bid-ask spread as a percentage
double get spreadPercentage {
  if (askPrice == 0) return 0; // Prevent division by zero
  return (spread / askPrice) * 100;
}
  /// Calculate the mid price between bid and ask
  double get midPrice => (askPrice + bidPrice) / 2;
  
  @override
  List<Object?> get props => [askPrice, askSize, bidPrice, bidSize, timestamp];
}