import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stock_market_game/core/resources/call_adapter.dart';
import 'package:stock_market_game/core/resources/result.dart';
import 'package:stock_market_game/data/models/company%20information/company_information_model.dart';

part '../../../generated/data/data_source/remote/company_api_service.g.dart';

@RestApi(callAdapter: MyCallAdapter)
abstract class CompanyApiService {
  factory CompanyApiService(Dio dio, {required String baseUrl}) = _CompanyApiService;
  @GET('/query')
  Future<Result<CompanyInformation>> getCompanyDetails(
      @Query("apikey") String apiKey,
      @Query("function") String function,
      @Query("symbol") String symbol);
}
