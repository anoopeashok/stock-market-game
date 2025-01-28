// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/company%20information/company_logo_repository.dart';
import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';

import '../../utils/result.dart';
import '../entity/top_market_movers_entity.dart';
import '../models/performance/top_movers_stocks_model.dart';

part '../../generated/domain/usecases/top_market_mover_usecase.g.dart';

@riverpod
TopMarketMoverUsecase topMarketMoverUsecase(Ref ref) => TopMarketMoverUsecase(
    companyLogoRepository: ref.read(companyLogoRepositoryProvider),
    stockRepository: ref.read(stockRepositoryProvider));

class TopMarketMoverUsecase {
  final CompanyLogoRepository _companyLogoRepository;
  final StockRepository _stockRepository;

  TopMarketMoverUsecase({
    required CompanyLogoRepository companyLogoRepository,
    required StockRepository stockRepository,
  })  : _stockRepository = stockRepository,
        _companyLogoRepository = companyLogoRepository;

  Future<Result<TopMarketMoversEntity>> getGainersandLosers() async {
    final topGainersAndLosers = await _stockRepository
        .getTopGainersAndlosers(TopGainerorLoserParameter.stocks);
    switch (topGainersAndLosers) {
      case Ok<TopMarketMoversModel>():
        List<String> gainerSymbols = [];
        List<String> loserSymbol = [];
        TopMarketMoversEntity topMarketMovers =
            TopMarketMoversEntity(gainers: [], losers: []);
        topGainersAndLosers.value.losers.length;
        for (int i = 0; i < topGainersAndLosers.value.gainers.length; i++) {
          gainerSymbols.add(topGainersAndLosers.value.gainers[i].symbol);
        }
        for (int i = 0; i < topGainersAndLosers.value.losers.length; i++) {
          loserSymbol.add(topGainersAndLosers.value.losers[i].symbol);
        }
        for (String symbol in gainerSymbols) {
          final companyLogo =
              await _companyLogoRepository.getCompanyLogos(symbol);
          Company company;
          switch (companyLogo) {
            case Ok<Company>():
              if (companyLogo.value.ticker == '') {
                company = Company(name: symbol, ticker: symbol, image: 'https://img.freepik.com/premium-vector/stock-market-icon-logo-element-illustration-stock-market-symbol-design-from-2-colored-collection-simple-stock-market-concept-can-be-used-web-mobile_159242-5117.jpg?w=1060');
              } else {
                company = companyLogo.value;
              }

              topMarketMovers.gainers.add(TopMarketMoversEntityItem(
                  company: company,
                  topMarketMoversModel: topGainersAndLosers.value.gainers
                      .firstWhere((item) => item.symbol == symbol)));
            case Error<Company>():
          }
        }

        for (String symbol in loserSymbol) {
          final companyLogo =
              await _companyLogoRepository.getCompanyLogos(symbol);
          Company company;
          switch (companyLogo) {
            case Ok<Company>():
              if (companyLogo.value.ticker == '') {
                company = Company(name: symbol, ticker: symbol, image: 'https://img.freepik.com/premium-vector/stock-market-icon-logo-element-illustration-stock-market-symbol-design-from-2-colored-collection-simple-stock-market-concept-can-be-used-web-mobile_159242-5117.jpg?w=1060');
              } else {
                company = companyLogo.value;
              }
              topMarketMovers.losers.add(TopMarketMoversEntityItem(
                  company: company,
                  topMarketMoversModel: topGainersAndLosers.value.losers
                      .firstWhere((item) => item.symbol == symbol)));
            case Error<Company>():
          }
        }
        return Result.ok(topMarketMovers);
      case Error<TopMarketMoversModel>():
        return Result.error(topGainersAndLosers.error);
    }
  }
}
