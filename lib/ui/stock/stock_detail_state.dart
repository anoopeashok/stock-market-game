
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
part '../../generated/ui/stock/stock_detail_state.freezed.dart';

@freezed
abstract class StockDetailState with _$StockDetailState{
  const factory StockDetailState({
    @Default([]) List<double> stockprices,
    CompanyStockInformation? companyInformation,
    @Default(true) bool isInitalLoading,
    @Default(false) bool barLoading,
    @Default(false) bool isError,
    String? error,
  }) = _StockDetailState;

  const StockDetailState._();

}