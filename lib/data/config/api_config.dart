import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stock_market_game/data/model/api_config_model.dart';

enum APIConfigName { alpaca, apininjas, alphavantage }

class ApiConfig {
  final Map<String, Map<String, String>> _remoteConfigHeader = {
    'alpaca': {
      "APCA-API-KEY-ID": dotenv.env['ALPACA_KEY'] ?? "",
      "APCA-API-SECRET-KEY": dotenv.env['ALPACA_SECRET'] ?? ""
    },
    'apininjas': {'X-Api-Key': dotenv.env['API_NINJAS'] ?? ""}
  };

  final Map<String, String> _remoteConfigQueryParameter = {
    'alphavantage': dotenv.env['ALPHAVANTAGE_API_KEY'] ?? "demo"
  };

  final Map<String, String?> _remoteHost = {
    'alpaca': dotenv.env['ALPACA_BASE_URL'],
    'apininjas': dotenv.env['API_NINJAS_BASE_URL'],
    'alphavantage': dotenv.env['ALPHANAVATGE_BASE_URL']
  };

  ApiConfigModel getApiConfig(APIConfigName name) {
    if (name == APIConfigName.alphavantage) {
      var key = _remoteConfigQueryParameter[name.name];
      var host = _remoteHost[name.name] ?? '';
      return ApiConfigModel(hostURL: '$host/query?apikey=$key');
    }
    return ApiConfigModel(
        hostURL: _remoteHost[name.name],
        header: _remoteConfigHeader[name.name]);
  }
}
