import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_market_game/data/services/local%20storage/local_storage.dart';
import 'package:stock_market_game/utils/app_exceptions.dart';
import 'package:stock_market_game/utils/result.dart';

part '../../../generated/data/services/local storage/local_storage_client.g.dart';


@riverpod
LocalStorage localStorage(Ref ref) => SharedPreferenceClient();

class SharedPreferenceClient extends LocalStorage {
  late SharedPreferences _sharedPreferences;

  @override
  Future<Result<bool>> delete(String key) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return await _sharedPreferences.remove(key)
        ? Result.ok(true)
        : Result.error(Exception("Error clearing data"));
  }

  @override
  Future<Result> get(String key) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    String? data = _sharedPreferences.getString(key);
    return data != null
        ? Result.ok(jsonDecode(data))
        : Result.error(NotFoundError());
  }

  @override
  Future<Result<bool>> create(String key, data) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return await _sharedPreferences.setString(key, jsonEncode(data))
        ? Result.ok(true)
        : Result.error(Exception("Error Saving data"));
  }

  @override
  Future<Result<bool>> clear() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return await _sharedPreferences.clear()
        ? Result.ok(true)
        : Result.error(Exception("Error clearing data"));
  }
}
