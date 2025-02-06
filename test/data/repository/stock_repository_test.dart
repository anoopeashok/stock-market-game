import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/performance/active_stock_list_model.dart';
import 'package:stock_market_game/domain/models/performance/top_movers_stocks_model.dart';

import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/utils/result.dart';

import '../../fixtures/fixture_reader.dart';

class MockRepositoryHelper extends Mock implements RepositoryHelper {}

void main() {
  late MockRepositoryHelper repositoryHelper;
  late StockRepository repository;

  setUp(() {
    repositoryHelper = MockRepositoryHelper();
    repository = StockRepository(repositoryHelper: repositoryHelper);
  });

  group('Testing Top Performer Repository', () {
    test('getTopGainersAndLosers returns data correctly', () async {
      // Arrange: Load and parse the test response.
      final testResponse = jsonDecode(fixture('top_performer.json'));
      final expectedObject = Result.ok(TopMarketMoversModel.fromJson(testResponse));
      // Stub the mock method.
      when(() => repositoryHelper .fetchData<TopMarketMoversModel>(endpoint: any(named: "endpoint"),fromJson: any(named: "fromJson")))
          .thenAnswer((_) async => expectedObject);

      // Act: Call the repository method.
      final result = await repository
          .getTopGainersAndlosers(TopGainerorLoserParameter.stocks);

      // Assert: Verify the result and interactions.
      expect(result, expectedObject);
      verify(() =>  repositoryHelper.fetchData<TopMarketMoversModel>(endpoint: any(named: "endpoint"),fromJson: any(named: "fromJson"))).called(1);
    });

    test('getActiveStocks', () async {
      final testResponse = jsonDecode(fixture('top_stock.json'));
      final expectedObject =
          Result.ok( ActiveStockListModel.fromJson(testResponse));
      when(() =>  repositoryHelper.fetchData<ActiveStockListModel>(endpoint: any(named: 'endpoint'),fromJson: any(named:"fromJson")))
          .thenAnswer((_) async => expectedObject);

      final result = await repository.getActiveStocks();

      expect(result, expectedObject);
      verify(() => repositoryHelper.fetchData<ActiveStockListModel>(endpoint: any(named: 'endpoint'),fromJson: any(named: "fromJson"))).called(1);
    });
  });
}
