
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stock_market_game/core/resources/call_adapter.dart';

import '../../../core/resources/result.dart';
import '../../models/economic_indicators/cpi_model.dart';
import '../../models/economic_indicators/gdp_model.dart';
import '../../models/economic_indicators/interest_rate.dart';
import '../../models/economic_indicators/retail_sales_model.dart';
import '../../models/economic_indicators/unemployment_rate.dart';

part '../../../generated/data/data_source/remote/economy_indicators_service.g.dart';

abstract class EconomyIndicatorsServiceApi {
  factory EconomyIndicatorsServiceApi(Dio dio,{required String baseUrl}) = _EconomyIndicatorsServiceApi;

  Future<Result<GdpModel>> getGDPPerCapita();
  Future<Result<CPIModel>> getCPI();
  Future<Result<FederalFundsRateModel>> getInterestRate();
  Future<Result<RetailSalesModel>> getRetailSalesRate();
  Future<Result<UnemploymentRateModel>> getUnemployementRate();

}