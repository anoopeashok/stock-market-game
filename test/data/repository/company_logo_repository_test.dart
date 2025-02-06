import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_game/data/repository/company%20information/company_logo_repository.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/utils/app_exceptions.dart';
import 'package:stock_market_game/utils/result.dart';

class MockRepositoryHelper extends Mock implements RepositoryHelper {}

void main() {
  late CompanyLogoRepository repository;
  late MockRepositoryHelper mockRepositoryHelper;

  setUp(() {
    mockRepositoryHelper = MockRepositoryHelper();
    repository = CompanyLogoRepository(repositoryHelper: mockRepositoryHelper);
    
  });

  group('CompanyLogo repository test', () {
    test('Should return Company Logo values on success call', () async {
      final mockJson = [
        {
          "name": "Microsoft",
          "ticker": "MSFT",
          "image":
              "https://api-ninjas-data.s3.us-west-2.amazonaws.com/logos/https://api-ninjas-data.s3.us-west-2.amazonaws.com/logos/l11f3242118ff2add5d117cbf216f29ac578f6ba6.png"
        }
      ];
        String symbol = "MSFT";

      final companyLogoInfo = Company.fromJson(mockJson);
      when(
        () => mockRepositoryHelper.fetchData<Company>(
            endpoint: any(named: "endpoint"), fromJson: any(named: "fromJson")),
      ).thenAnswer((_) async => Result.ok(companyLogoInfo));

      final result = await repository.getCompanyLogos(symbol);

      expect(result, isA<Ok>());
      expect(result, Result.ok(companyLogoInfo));
    });
  });

  test('logo not found', () async {
          String symbol = "MSFT";

    final error = Result<Company>.error(NotFoundError());
    when(
      () => mockRepositoryHelper.fetchData<Company>(
          endpoint: any(named: "endpoint"), fromJson: any(named: "fromJson")),
    ).thenAnswer((_) async => error);

    final result = await repository.getCompanyLogos(symbol);
    expect(result, error);
  });
}
