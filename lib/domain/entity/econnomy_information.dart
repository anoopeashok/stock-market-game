import '../models/economic_indicators/cpi_model.dart';
import '../models/economic_indicators/gdp_model.dart';
import '../models/economic_indicators/interest_rate.dart';
import '../models/economic_indicators/retail_sales_model.dart';
import '../models/economic_indicators/unemployment_rate.dart';

class EconomyInformationEntity {
  GdpModel gdpModel;
  CPIModel cpiModel;
  FederalFundsRateModel federalFundsRateModel;
  RetailSalesModel retailSalesModel;
  UnemploymentRateModel unemploymentRateModel;

  EconomyInformationEntity(
      {required this.cpiModel,
      required this.federalFundsRateModel,
      required this.gdpModel,
      required this.retailSalesModel,
      required this.unemploymentRateModel});
}
