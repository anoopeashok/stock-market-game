// Mock dependencies
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_game/data/repository/company%20information/company_information_repository.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
import 'package:stock_market_game/utils/result.dart';

class MockRepositoryHelper extends Mock implements RepositoryHelper {}

void main() {
  late CompanyInformationRepository repository;
  late MockRepositoryHelper mockRepositoryHelper;

  final mockJson = {
    "Symbol": "IBM",
    "AssetType": "Common Stock",
    "Name": "International Business Machines",
    "Description":
        "International Business Machines Corporation (IBM) is an American multinational technology company headquartered in Armonk, New York, with operations in over 170 countries. The company began in 1911, founded in Endicott, New York, as the Computing-Tabulating-Recording Company (CTR) and was renamed International Business Machines in 1924. IBM is incorporated in New York. IBM produces and sells computer hardware, middleware and software, and provides hosting and consulting services in areas ranging from mainframe computers to nanotechnology. IBM is also a major research organization, holding the record for most annual U.S. patents generated by a business (as of 2020) for 28 consecutive years. Inventions by IBM include the automated teller machine (ATM), the floppy disk, the hard disk drive, the magnetic stripe card, the relational database, the SQL programming language, the UPC barcode, and dynamic random-access memory (DRAM). The IBM mainframe, exemplified by the System/360, was the dominant computing platform during the 1960s and 1970s.",
    "CIK": "51143",
    "Exchange": "NYSE",
    "Currency": "USD",
    "Country": "USA",
    "Sector": "TECHNOLOGY",
    "Industry": "COMPUTER & OFFICE EQUIPMENT",
    "Address": "1 NEW ORCHARD ROAD, ARMONK, NY, US",
    "OfficialSite": "https://www.ibm.com",
    "FiscalYearEnd": "December",
    "LatestQuarter": "2024-12-31",
    "MarketCapitalization": "241082696000",
    "EBITDA": "14676000000",
    "PERatio": "40.61",
    "PEGRatio": "8.54",
    "BookValue": "26.44",
    "DividendPerShare": "0",
    "DividendYield": "0.0292",
    "EPS": "6.42",
    "RevenuePerShareTTM": "68.11",
    "ProfitMargin": "0.102",
    "OperatingMarginTTM": "0.141",
    "ReturnOnAssetsTTM": "0.0473",
    "ReturnOnEquityTTM": "0.267",
    "RevenueTTM": "62579999000",
    "GrossProfitTTM": "35378999000",
    "DilutedEPSTTM": "6.42",
    "QuarterlyEarningsGrowthYOY": "0.141",
    "QuarterlyRevenueGrowthYOY": "0.015",
    "AnalystTargetPrice": "248.71",
    "AnalystRatingStrongBuy": "1",
    "AnalystRatingBuy": "5",
    "AnalystRatingHold": "9",
    "AnalystRatingSell": "2",
    "AnalystRatingStrongSell": "1",
    "TrailingPE": "40.61",
    "ForwardPE": "23.92",
    "PriceToSalesRatioTTM": "3.852",
    "PriceToBookRatio": "8.66",
    "EVToRevenue": "4.466",
    "EVToEBITDA": "23.02",
    "Beta": "0.71",
    "52WeekHigh": "265.25",
    "52WeekLow": "158.38",
    "50DayMovingAverage": "225.81",
    "200DayMovingAverage": "201.06",
    "SharesOutstanding": "924645000",
    "DividendDate": "2025-03-10",
    "ExDividendDate": "2025-02-10"
  };

  setUp(() {
    mockRepositoryHelper = MockRepositoryHelper();
    repository =
        CompanyInformationRepository(repositoryHelper: mockRepositoryHelper);
    registerFallbackValue(Result.ok(CompanyInformation.fromJson(mockJson)));
  });

  group('CompanyInformationRepository Tests', () {
test('should return CompanyInformation on successful fetch', () async {
      // Arrange
      const String symbol = 'IBM';
      const String endpoint = '&function=OVERVIEW&symbol=$symbol';

      final companyInfo = CompanyInformation.fromJson(mockJson);

      when(() => mockRepositoryHelper.fetchData<CompanyInformation>(
            endpoint: any(named: "endpoint"),
            fromJson:any(named: "fromJson"),
          )).thenAnswer((_) async => Result.ok(companyInfo));

      // Act
      final result = await repository.getCompanyInformation(symbol);

      // Assert
      expect(result, isA<Ok<CompanyInformation>>());
      expect((result as Ok).value.symbol, 'IBM');
      verify(() => mockRepositoryHelper.fetchData<CompanyInformation>(
            endpoint: any(named: 'endpoint'),
            fromJson: any(named: "fromJson"),
          )).called(1);
    });

    test('should return error when fetch fails', () async {
      // Arrange
      const String symbol = 'IBM';
      const String endpoint = '&function=OVERVIEW&symbol=$symbol';
      final error = Exception('API Error');

      when(() => mockRepositoryHelper.fetchData<CompanyInformation>(
            endpoint: any(named: 'endpoint'),
            fromJson: any(named: 'fromJson'),
          )).thenAnswer((_) async => Result.error(error));

      // Act
      final result = await repository.getCompanyInformation(symbol);

      // Assert
      expect(result, isA<Error>());
      expect((result as Error).error, error);
    });
  });

}
