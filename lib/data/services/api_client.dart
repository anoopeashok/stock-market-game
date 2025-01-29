import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/model/api_config_model.dart';
import 'package:stock_market_game/main.dart';

import '../../utils/app_exceptions.dart';
import '../../utils/result.dart';
import '../config/api_config.dart';

part '../../generated/data/services/api_client.g.dart';

@riverpod
ApiClient apiClient(Ref ref, {required APIConfigName apiConfigName}) =>
    ApiClient(apiConfigName: apiConfigName);

class ApiClient {
  ApiClient({required APIConfigName apiConfigName})
      : _apiConfigName = apiConfigName {
    _setHostInfo();
  }

  String _host = '';
  Map<String, String>? _authHeader;
  final APIConfigName _apiConfigName;

  Future<Result<dynamic>> get({required String endpoint}) async {
    try {
      var url = Uri.parse(_host + endpoint);
      var response = await http.get(url, headers: _authHeader);
      final data = await json.decode(response.body);

      if (response.statusCode == 200) {
        if (_apiConfigName == APIConfigName.apininjas && data == []) {
          throw NotFoundError();
        }
        return Result.ok(data);
      } else if (response.statusCode == 401) {
        return Result.error(UnAuthorisedError());
      } else {
        return Result.error(ResponseError(data));
      }
    } catch (error) {
      log.severe(error.toString());
      rethrow;
    }
  }

  void _setHostInfo() {
    ApiConfigModel apiConfigModel = ApiConfig().getApiConfig(_apiConfigName);
    _host = apiConfigModel.getHostUrl ?? '';
    _authHeader = apiConfigModel.getHeader;
  }
}
