
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stock_market_game/core/resources/call_adapter.dart';

import '../../../core/resources/result.dart';
import '../../models/news/news_model.dart';
part '../../../generated/data/data_source/remote/news_api_service.g.dart';

@RestApi(callAdapter: MyCallAdapter)
abstract class NewsApiService {
  factory NewsApiService (Dio dio,{required String baseUrl}) = _NewsApiService;

  @GET('/v1beta1/news')
  Future<Result<NewsFeedModel>> getNewsArticle({@Query("sort")String? sort = "desc",  @Query("page_token") String? nextPageToken = ''});
}