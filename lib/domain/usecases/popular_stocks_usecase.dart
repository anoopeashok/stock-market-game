import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/domain/entity/popular_stock.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/domain/models/stock/stock_data_model.dart';
import 'package:stock_market_game/utils/result.dart';

import '../../data/repository/company information/company_logo_repository.dart';
import '../models/performance/active_stock_list_model.dart';

part '../../generated/domain/usecases/popular_stocks_usecase.g.dart';

@riverpod
PopularStocksUsecase popularStocksUsecase(Ref ref) => PopularStocksUsecase(
    stockRepository: ref.read(stockRepositoryProvider),
    companyLogoRepository: ref.read(companyLogoRepositoryProvider));

class PopularStocksUsecase {
  final StockRepository _stockRepository;
  final CompanyLogoRepository _companyLogoRepository;

  PopularStocksUsecase(
      {required StockRepository stockRepository,
      required CompanyLogoRepository companyLogoRepository})
      : _stockRepository = stockRepository,
        _companyLogoRepository = companyLogoRepository;

  // Future<Result<List<PopularStock>>> getPopularStocks() async {
  //   final activeStock = await _stockRepository.getActiveStocks();
  //   List<PopularStock> popularStock = [];
  //   List<String> symbols = [];
  //   List<Company> companies = [];

  //   switch (activeStock) {
  //     case Ok<ActiveStockListModel>():
  //       activeStock.value.stockList
  //           .forEach((stock) => symbols.add(stock.symbol));

  //       for (String symbol in symbols) {
  //         final companyLogo =
  //             await _companyLogoRepository.getCompanyLogos(symbol);
  //         var company;
  //         switch (companyLogo) {
  //           case Ok<Company>():
  //             if (companyLogo.value.ticker == '') {
  //               company = Company(name: symbol, ticker: symbol, image: '');
  //             } else {
  //               company = companyLogo.value;
  //             }
  //             companies.add(company);

  //           case Error<Company>():
  //             return Result.error(companyLogo.error);
  //         }
  //       }
  //       final stockData = await _stockRepository.getStockData(symbols);
  //       switch (stockData) {
  //         case Ok():
  //           for (int i = 0; i < symbols.length; i++) {
  //             popularStock.add(PopularStock(
  //                 stockInfo: stockData.value.stocks
  //                     .firstWhere((stock) => stock.name == symbols[i]),
  //                 activeStockItem: activeStock.value.stockList[i],
  //                 company: companies
  //                     .firstWhere((company) => company.ticker == symbols[i])));
  //           }
  //           return Result.ok(popularStock);
  //         case Error():
  //           return Result.error(stockData.error);
  //       }
  //     case Error():
  //       return Result.error(activeStock.error);
  //   }
  // }

  Future<Result<List<PopularStock>>> getPopularStocks() async {
    final activeStock = await _stockRepository.getActiveStocks();

    switch (activeStock) {
      case Error():
        return Result.error(activeStock.error);
      case Ok():
    }
    List<String> symbols = [];
    List<Company> companies = [];
    List<PopularStock> popularStock = [];

    for (var stock in activeStock.value.stockList) {
      symbols.add(stock.symbol);
    }
    for (String symbol in symbols) {
      final companyLogo = await _companyLogoRepository.getCompanyLogos(symbol);
      Company company;

      switch (companyLogo) {
        case Ok<Company>():
          if (companyLogo.value.ticker == '') {
            company = Company(name: symbol, ticker: symbol, image: '');
          } else {
            company = companyLogo.value;
          }
          companies.add(company);

        case Error<Company>():
          return Result.error(companyLogo.error);
      }
    }

    final stockData = await _stockRepository.getStockData(symbols);
    switch (stockData) {
      case Error():
        return Result.error(stockData.error);
      case Ok():
    }
    for (int i = 0; i < symbols.length; i++) {
      popularStock.add(PopularStock(
          stockInfo: stockData.value.stocks
              .firstWhere((stock) => stock.name == symbols[i]),
          activeStockItem: activeStock.value.stockList[i],
          company:
              companies.firstWhere((company) => company.ticker == symbols[i])));
    }
    return Result.ok(popularStock);
  }
}
