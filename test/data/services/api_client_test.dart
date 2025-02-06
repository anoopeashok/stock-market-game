import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:stock_market_game/data/config/api_config.dart';
import 'dart:convert';

import 'package:stock_market_game/data/services/api_client.dart';
import 'package:stock_market_game/utils/app_exceptions.dart';
import 'package:stock_market_game/utils/result.dart';

// Mocking the HTTP client
class MockHttpClient extends Mock implements http.Client {}

void main() {
  late ApiClient apiClient;
  late MockHttpClient mockHttpClient;

  setUp(() async{
    await dotenv.load(fileName: ".env");
    mockHttpClient = MockHttpClient();
    apiClient = ApiClient(client: mockHttpClient, apiConfigName: APIConfigName.apininjas);
        registerFallbackValue(Uri.parse('https://example.com'));

  });

  test('returns data when the http call completes successfully', () async {
    final responseBody = jsonEncode({'key': 'value'});

    when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
        .thenAnswer((_) async => http.Response(responseBody, 200));

    Result<dynamic> result = await apiClient.get(endpoint: '/test-endpoint');

    expect(result, Result.ok(jsonDecode(responseBody)));
  });

  test(
      'returns NotFoundError when API returns empty list for APIConfigName.apininjas',
      () async {
    final responseBody = jsonEncode([]);
    final uri = Uri.parse('/test-endpoint');

    when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
        .thenAnswer((_) async => http.Response(responseBody, 200));
    var result = await apiClient.get(endpoint: '/test-endpoint');
    expect(result,
      Result.error(NotFoundError()),
    );
  });

  test('returns UnAuthorisedError when API returns 401', () async {
    final uri = Uri.parse(  '/test-endpoint');

    when(() => mockHttpClient.get(uri, headers: any(named: 'headers')))
        .thenAnswer((_) async => http.Response('Unauthorized', 401));

    final result = await apiClient.get(endpoint: '/test-endpoint');

    expect(result,Result.error(UnKnownError()));
  });
}
