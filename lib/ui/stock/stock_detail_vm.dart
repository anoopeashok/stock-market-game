import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/company%20information/company_information_repository.dart';
import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/domain/entity/company_full_data.dart';
import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
import 'package:stock_market_game/domain/usecases/company_information_usecase.dart';
import 'package:stock_market_game/ui/stock/stock_detail_state.dart';
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

// @riverpod
// class StockDetailVM extends _$StockDetailVM {
//   late StockRepository _stockRepository;
//   late CompanyInformationRepository _companyInformationRepository;
//   bool _isInitalized = false;

//   @override
//   StockDetailState build(StockInformationRequest request) {
//     _stockRepository = ref.read(stockRepositoryProvider);
//     _companyInformationRepository =
//         ref.read(companyInformationRepositoryProvider);

//     // Initialize state if needed
//     if (!_isInitalized) {
//       _isInitalized = true;
//       _initialize(request);
//     }

//     return StockDetailState();
//   }

//   Future<void> _initialize(StockInformationRequest request) async {
//     // Call both APIs to fetch data
//     await getAllInfo(request);
//   }

//   Future<void> getHistoricalBar(StockInformationRequest request) async {
//     final stockResult = await _stockRepository.getHistoricalBarData(request);
//     switch (stockResult) {
//       case Error<HistoricalBarDataModel>():
//         state = state.copyWith(
//           barLoading: false,
//           isInitalLoading: false,
//           isError: true,
//           error: stockResult.error.toString(),
//         );
//         break;
//       case Ok<HistoricalBarDataModel>():
//         final stockPrices =
//             stockResult.value.bars.map((item) => item.high).toList();
//         state = state.copyWith(
//           barLoading: false,
//           isInitalLoading: false,
//           stockprices: stockPrices,
//         );
//         break;
//     }
//   }

//   Future<void> getAllInfo(StockInformationRequest request) async {
//     final companyInfo = await _companyInformationRepository
//         .getCompanyStockInformation(request.symbol);

//     switch (companyInfo) {
//       case Error<CompanyInformation>():
//         state = state.copyWith(
//           isInitalLoading: false,
//           isError: true,
//           error: companyInfo.error.toString(),
//         );
//         break;
//       case Ok<CompanyInformation>():
//         await getHistoricalBar(request);
//         state = state.copyWith(
//           isInitalLoading: false,
//           companyInformation: companyInfo.value,
//         );
//         break;
//     }
//   }
// }
