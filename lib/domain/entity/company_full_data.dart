// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/domain/models/stock/latest_bar.dart';


class CompanyFullData {
  CompanyInformation companyInformation;
  final Company _company;
  final LatestBarDataModel _barData;
  CompanyFullData({
    required this.companyInformation,
    required Company company,
    required LatestBarDataModel barData,
  })  : _barData = barData,
        _company = company;

  String get image => _company.image;

  double get price => _barData.bars.high;

  double get priceChange => _barData.bars.high - _barData.bars.low;
}
