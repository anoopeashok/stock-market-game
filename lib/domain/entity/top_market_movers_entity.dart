// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stock_market_game/domain/models/performance/top_movers_stocks_model.dart';

import '../models/company information/company_logo_model.dart';

class TopMarketMoversEntity {
  List<TopMarketMoversEntityItem> gainers;
  List<TopMarketMoversEntityItem> losers;
  TopMarketMoversEntity({
    required this.gainers,
    required this.losers,
  });
  
}

class TopMarketMoversEntityItem {
  Company company;
  TopMarketMoverItemModel topMarketMoversModel;
  TopMarketMoversEntityItem({
    required this.company,
    required this.topMarketMoversModel,
  });
}
