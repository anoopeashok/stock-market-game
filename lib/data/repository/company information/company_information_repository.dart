import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/data/config/api_config.dart';
import 'package:stock_market_game/data/repository/repository_helper.dart';
import 'package:stock_market_game/utils/result.dart';

import '../../../domain/models/company information/company_information_model.dart';
part '../../../generated/data/repository/company information/company_information_repository.g.dart';

@riverpod
CompanyInformationRepository companyInformationRepository(Ref ref) =>
    CompanyInformationRepository(repositoryHelper: ref.read(repositoryHelperProvider(apiConfigName: APIConfigName.alphavantage)) );

class CompanyInformationRepository {
  final RepositoryHelper _repositoryHelper;

  CompanyInformationRepository({required RepositoryHelper repositoryHelper})
      : _repositoryHelper = repositoryHelper;


  Future<Result<CompanyStockInformation>> getCompanyStockInformation(
      String symbol) async {
    String endpoint = '&function=OVERVIEW&symbol=$symbol';
    return await _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => CompanyStockInformation.fromJson(json));
  }
}
