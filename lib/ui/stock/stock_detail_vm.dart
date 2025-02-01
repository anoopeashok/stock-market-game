import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/domain/entity/company_full_data.dart';
import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/domain/usecases/company_information_usecase.dart';
import 'package:stock_market_game/utils/result.dart';

import '../../domain/models/stock/historical_bar.dart';

part '../../generated/ui/stock/stock_detail_vm.g.dart';

@riverpod
Future<CompanyFullData> getCompanyInformation(Ref ref,
    {required String symbol}) async {
  final companyInformationUsecase =
      ref.read(companyInformationUsecaseProvider);
  final companyInfo = await companyInformationUsecase
      .getCompanyInformation(symbol);

  switch (companyInfo) {
    case Error<CompanyFullData>():
      throw Exception(companyInfo.error);
    case Ok<CompanyFullData>():
      return companyInfo.value;
  }
}

@riverpod
Future<List<double>> getHistoricalBarData(Ref ref,
    {required StockInformationRequest request}) async {
  final stockRepository = ref.read(stockRepositoryProvider);

  final stockResult = await stockRepository.getHistoricalBarData(request);
  switch (stockResult) {
    case Error<HistoricalBarDataModel>():
      throw Exception(stockResult.error);
    case Ok<HistoricalBarDataModel>():
      final stockPrices =
          stockResult.value.bars.map((item) => item.high).toList();
      return stockPrices;
  }
}

