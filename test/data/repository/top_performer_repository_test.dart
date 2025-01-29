import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/performance/active_stock_list_model.dart';
import 'package:stock_market_game/domain/models/performance/top_movers_stocks_model.dart';

import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/data/services/api_client.dart';

import '../../fixtures/fixture_reader.dart';

class MockRepositoryHelper extends Mock implements RepositoryHelper {}

void main() {
  late MockRepositoryHelper repositoryHelper;
  late MarketMoverRepository repository;

  setUp(() {
    repositoryHelper = MockRepositoryHelper();
    repository = MarketMoverRepository(repositoryHelper: repositoryHelper);
  });

  group('Testing Top Performer Repository', () {
    test('getTopGainersAndLosers returns data correctly', () async {
      // Arrange: Load and parse the test response.
      final testResponse = jsonDecode(fixture('top_performer.json'));
      final expectedObject = TopMarketMoversModel.fromJson(testResponse);
      // Stub the mock method.
      when(() => repository.get(endpoint: any(named: "endpoint")))
          .thenAnswer((_) async => testResponse);

      // Act: Call the repository method.
      final result = await repository
          .getTopGainersAndlosers(TopGainerorLoserParameter.stocks);

      // Assert: Verify the result and interactions.
      expect(result, expectedObject);
      verify(() => apiClient.get(endpoint: any(named: "endpoint"))).called(1);
    });

    test('getActiveStocks', () async {
      final testResponse = jsonDecode(fixture('top_stock.json'));
      final expectedObject =
          ActiveStockListModel.fromJson(testResponse);

      when(() => apiClient.get(endpoint: any(named: 'endpoint')))
          .thenAnswer((_) async => testResponse);

      final result = await repository.getActiveStocks();

      expect(result, expectedObject);
      verify(() => apiClient.get(endpoint: any(named: 'endpoint'))).called(1);
    });
  });
}
