import '../../../core/resources/result.dart';
import '../../entity/news/news_entity.dart';

abstract class NewsRepository {
  Future<Result<NewsArticleEntity>> getNewsArticle();
}