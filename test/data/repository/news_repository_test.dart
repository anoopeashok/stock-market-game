import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_game/data/repository/news/news_repository.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/news/news_model.dart';
import 'package:stock_market_game/utils/result.dart';

class MockRepositoryHelper extends Mock implements RepositoryHelper {}

void main() {
  MockRepositoryHelper mockRepositoryHelper = MockRepositoryHelper();
  NewsRepository repository =
      NewsRepository(repositoryHelper: mockRepositoryHelper);

  group('News Repository test', ()  {
    test('News repository success', () async {
      final mockJson = {
        "news": [
          {
            "author": "Benzinga Newsdesk",
            "content": "",
            "created_at": "2025-02-06T17:17:58Z",
            "headline":
                "RBC Capital Maintains Outperform on Essex Property Trust, Raises Price Target to \$315",
            "id": 43537189,
            "images": [],
            "source": "benzinga",
            "summary": "",
            "symbols": ["ESS"],
            "updated_at": "2025-02-06T17:17:59Z",
            "url":
                "https://www.benzinga.com/news/25/02/43537189/rbc-capital-maintains-outperform-on-essex-property-trust-raises-price-target-to-315"
          },
          {
            "author": "Chandrima Sanyal",
            "content": "",
            "created_at": "2025-02-06T17:16:09Z",
            "headline":
                "Cohen & Steers Expands Active ETF Offerings With Three New Funds",
            "id": 43537127,
            "images": [
              {
                "size": "large",
                "url":
                    "https://cdn.benzinga.com/files/imagecache/2048x1536xUP/images/story/2025/02/06/Money-Matters.jpeg"
              },
              {
                "size": "small",
                "url":
                    "https://cdn.benzinga.com/files/imagecache/1024x768xUP/images/story/2025/02/06/Money-Matters.jpeg"
              },
              {
                "size": "thumb",
                "url":
                    "https://cdn.benzinga.com/files/imagecache/250x187xUP/images/story/2025/02/06/Money-Matters.jpeg"
              }
            ],
            "source": "benzinga",
            "summary":
                "Cohen &amp; Steers launches 3 new actively managed ETFs targeting real estate, preferred securities, and natural resources, meeting growing demand.",
            "symbols": [
              "AEM",
              "AGCO",
              "AMT",
              "CSNR",
              "CSPF",
              "CSRE",
              "EQIX",
              "FANG",
              "WELL"
            ],
            "updated_at": "2025-02-06T17:16:10Z",
            "url":
                "https://www.benzinga.com/25/02/43537127/cohen-steers-expands-active-etf-offerings-with-three-new-funds"
          },
        ],
        "next_page_token": "MTczODg2MTgwMTAwMDAwMDAwMHw0MzUzNjkzNQ=="
      };

      when(
        () => mockRepositoryHelper.fetchData<NewsFeedModel>(
            endpoint: any(named: "endpoint"), fromJson: any(named: "fromJson")),
      ).thenAnswer((_) async => Result.ok(NewsFeedModel.fromJson(mockJson)));

      final result = await repository.getNewsArticle();
      expect(result, Result.ok(NewsFeedModel.fromJson(mockJson)));
    });

    test('news repository fail', () async {
      final expected = Result<NewsFeedModel>.error(Exception());

      when(
        () => mockRepositoryHelper.fetchData<NewsFeedModel>(
            endpoint: any(named: "endpoint"), fromJson: any(named: "fromJson")),
      ).thenAnswer((_) async => expected);

      final result = await repository.getNewsArticle();
      expect(result, expected );
    });
  });
}
