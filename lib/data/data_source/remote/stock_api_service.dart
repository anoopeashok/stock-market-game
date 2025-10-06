import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stock_market_game/core/resources/call_adapter.dart';

import '../../../core/resources/result.dart';
import '../../models/performance/active_stock_list_model.dart';
import '../../models/performance/top_movers_stocks_model.dart';
import '../../models/stock/historical_bar.dart';
import '../../models/stock/latest_bar.dart';
import '../../models/stock/multi_historical_bar.dart';
import '../../models/stock/stock_data_model.dart';

part '../../../generated/data/data_source/remote/stock_api_service.g.dart';

@RestApi(callAdapter: MyCallAdapter)
abstract class StockApiService {
  factory StockApiService(Dio dio, {required String baseUrl}) =
      _StockApiService;

  @GET('/v1beta1/screener/stocks/most-actives')
  Future<Result<ActiveStockListModel>> getActiveStocks(
      @Query("by") String sortby, @Query("top") int count);
  @GET('/v1beta1/screener/{parameter}/movers')
  Future<Result<TopMarketMoversModel>> getTopGainersAndlosers(
      @Path() String parameter, @Query("top") int count);
  @GET('/v2/stocks/snapshots')
  Future<Result<StockData>> getStockData(@Query("symbols") String symbols);
  @GET("/v2/stocks/bars?limit=1000&adjustment=raw&feed=iex&sort=asc")
  Future<Result<HistoricalBarDataModel>> getHistoricalBarData(
      @Query("symbols") String symbols,
      @Query("timeFrame") String timeFrame,
      @Query("startDate") String startDate,
      @Query("endDate") String endDate);

  @GET("/v2/stocks/bars?limit=1000&adjustment=raw&feed=iex&sort=asc")
  Future<Result<MultiHistoricalBar>> getMultitHistoricalBarData(@Query("symbols") String symbols,
      @Query("timeFrame") String timeFrame,
      @Query("startDate") String startDate,
      @Query("endDate") String endDate);
  @GET("/v2/stocks/bars/latest")
  Future<Result<LatestBarDataModel>> getLatestBarData(
      @Query("symbol") String symbol);
}
