import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stock_market_game/data/services/api_client.dart';
import 'package:stock_market_game/utils/app_exceptions.dart';
import 'package:http/http.dart' as http;

class MockHttp extends Mock implements http.Client {}

void main() async {
  late MockHttp mockHttp;
  late ApiClient apiClient;
  setUp(() {
    mockHttp = MockHttp();
    apiClient = ApiClient(host: 'https://api.example.com', client: mockHttp);
  });

  group('test get exceptions', () {
    final uri = Uri.parse('https://api.example.com/test-endpoint');

    test('unauthorised exceptions', () async {
      when(() => mockHttp.get(uri)).thenAnswer(
          (_) async => http.Response(jsonEncode({'msg': 'Unauthorized'}), 401));

      expect(() => apiClient.get(endpoint: '/test-endpoint'),
          throwsA(isA<UnAuthorisedError>()));
    });

    test('any other exceptions', () {
      when(() => mockHttp.get(uri)).thenAnswer((_) async =>
          http.Response(json.encode({'msg': 'Server error'}), 500));

      expect(() => apiClient.get(endpoint: '/test-endpoint'),
          throwsA(isA<ResponseError>()));
    });

    test('socket exception', () {
      when(() => mockHttp.get(uri)).thenThrow(SocketException('No internet'));

      expect(() => apiClient.get(endpoint: '/test-endpoint'),
          throwsA(isA<NetworkError>()));
    });
  });
}
