import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';

class StockDetail {
  List<double> prices;
  CompanyStockInformation companyStockInformation;

  StockDetail({required this.companyStockInformation, required this.prices});
}
