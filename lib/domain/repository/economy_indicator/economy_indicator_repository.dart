
import '../../entity/economic_indicators/cpi_entity.dart';
import '../../entity/economic_indicators/federal_fund_entity.dart';
import '../../entity/economic_indicators/gdp_entity.dart';
import '../../entity/economic_indicators/retail_sales_entity.dart';
import '../../entity/economic_indicators/unemployment_entity.dart';

abstract class EconomyIndicatorRepository {
  Future<GdpEntity> getGdpData();
  Future<CPIEntity> getCpiData();
  Future<FederalFundEntity> getInterestRate();
  Future<RetailSalesEntity> getRetailSalesData();
  Future<UnemploymentRateEntity> getUnemploymentRate();

}