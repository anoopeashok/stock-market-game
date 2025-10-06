
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:stock_market_game/core/resources/call_adapter.dart';
import 'package:stock_market_game/core/resources/result.dart';
import 'package:stock_market_game/data/models/company%20information/company_logo_model.dart';

part '../../../generated/data/data_source/remote/company_logo_api_service.g.dart';

@RestApi(callAdapter: MyCallAdapter)
abstract class CompanyLogoApiService {
  factory CompanyLogoApiService(Dio dio,{required String baseUrl}) = _CompanyLogoApiService;

  @GET('/v1/logo')
  Future<Result<CompanyLogoModel>> getCompanyLogos(@Query("symbol") String symbol);
}