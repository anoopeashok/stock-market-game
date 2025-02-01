import 'package:freezed_annotation/freezed_annotation.dart';
part '../../generated/ui/trade stocks/buy_stock_state.freezed.dart';
@freezed
abstract class BuyStockState with _$BuyStockState {
  const factory BuyStockState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    String? error,
  }) = _BuyStockState;

  const BuyStockState._();
}
