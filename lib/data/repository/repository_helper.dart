import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/services/api_client.dart';
import 'package:stock_market_game/data/services/local%20storage/local_storage.dart';
import 'package:stock_market_game/data/services/local%20storage/local_storage_client.dart';
import 'package:stock_market_game/utils/app_exceptions.dart';

import '../../utils/result.dart';
part '../../generated/data/repository/repository_helper.g.dart';

@riverpod
RepositoryHelper repositoryHelper(Ref ref,
    {required APIConfigName apiConfigName}) {
  return RepositoryHelper(
      localStorage: ref.watch(localStorageProvider),
      apiClient: ref.watch(apiClientProvider(apiConfigName: apiConfigName)));
}

class RepositoryHelper {
  final LocalStorage _localStorage;
  final ApiClient _apiClient;

  RepositoryHelper(
      {required LocalStorage localStorage, required ApiClient apiClient})
      : _localStorage = localStorage,
        _apiClient = apiClient;


  Future<Result<T>> fetchData<T>({
    required String endpoint,
    required T Function(dynamic) fromJson,
  }) async{
      var apiData = await _apiClient.get(endpoint: endpoint); 
      switch (apiData) {
      case Ok<dynamic>():
        return Result.ok(fromJson(apiData.value));
      case Error<dynamic>():
        return Result.error(apiData.error);
    }
  }

  Future<Result<T>> fetchDataWithCache<T>({
    required String endpoint,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    // Try fetching from local storage
    var localData = await _localStorage.get(endpoint);
    switch (localData) {
      case Ok<dynamic>():
        // If successful, parse and return the data
        return Result.ok(fromJson(localData.value));

      case Error<dynamic>():
        // Handle specific NotFoundError
        if (localData.error is NotFoundError) {
          // Fetch from API as a fallback
          var apiData = await _apiClient.get(endpoint: endpoint);
          switch (apiData) {
            case Ok<dynamic>():
              // Save to local storage and return the data
              await _localStorage.create(endpoint, apiData.value);
              return Result.ok(fromJson(apiData.value));
            case Error<dynamic>():
              // Return the API error
              return Result.error(apiData.error);
          }
        }
        // Return other errors from local storage
        return Result.error(localData.error);
    }
  }
}
