import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/repository/company%20information/company_information_repository.dart';
import 'package:stock_market_game/data/repository/company%20information/company_logo_repository.dart';
import 'package:stock_market_game/data/repository/stock/stock_repository.dart';
import 'package:stock_market_game/domain/entity/company_full_data.dart';
import 'package:stock_market_game/domain/models/company%20information/company_information_model.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/domain/models/stock/latest_bar.dart';
import 'package:stock_market_game/utils/result.dart';

part '../../generated/domain/usecases/company_information_usecase.g.dart';

@riverpod
CompanyInformationUsecase companyInformationUsecase(Ref ref) =>
    CompanyInformationUsecase(
        companyInformationRepository:
            ref.read(companyInformationRepositoryProvider),
        companyLogoRepository: ref.read(companyLogoRepositoryProvider),
        stockRepository: ref.read(stockRepositoryProvider));

class CompanyInformationUsecase {
  final CompanyInformationRepository _companyInformationRepository;
  final CompanyLogoRepository _companyLogoRepository;
  final StockRepository _stockRepository;

  CompanyInformationUsecase({
    required CompanyInformationRepository companyInformationRepository,
    required CompanyLogoRepository companyLogoRepository,
    required StockRepository stockRepository,
  })  : _companyInformationRepository = companyInformationRepository,
        _companyLogoRepository = companyLogoRepository,
        _stockRepository = stockRepository;

  Future<Result<CompanyFullData>> getCompanyInformation(
      String symbol) async {
    final companyApi =
        _companyInformationRepository.getCompanyInformation(symbol);
    final logoApi = _companyLogoRepository.getCompanyLogos(symbol);
    final stockApi = _stockRepository.getLatestBarData(symbol);

    final response = await Future.wait([companyApi, logoApi, stockApi]);

    Result<CompanyInformation> companyData =
        response[0] as Result<CompanyInformation>;
    Result<Company> logoData = response[1] as Result<Company>;
    Result<LatestBarDataModel> latestBar =
        response[2] as Result<LatestBarDataModel>;

    switch (companyData) {
      case Error():
        return Result.error(companyData.error);
      case Ok():
    }

    switch (logoData) {
      case Error():
        return Result.error(logoData.error);
      case Ok():
    }

    switch (latestBar) {
      case Error():
        return Result.error(latestBar.error);
      case Ok():
    }

    return Result.ok(CompanyFullData(
        companyInformation: companyData.value,
        company: logoData.value,
        barData: latestBar.value));
  }
}
