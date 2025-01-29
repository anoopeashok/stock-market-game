import 'package:stock_market_game/utils/result.dart';


abstract class LocalStorage {
  Future<Result<bool>> create(String key, dynamic data);
  Future<Result<dynamic>> get(String key);
  Future<Result<bool>> delete(String key);
  Future<Result<bool>> clear();
}
