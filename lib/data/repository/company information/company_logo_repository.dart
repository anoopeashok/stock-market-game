import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/utils/result.dart';

import '../../../domain/models/company information/company_logo_model.dart';
import '../../config/api_config.dart';
import '../repository_helper.dart';

part '../../../generated/data/repository/company information/company_logo_repository.g.dart';

@riverpod
CompanyLogoRepository companyLogoRepository(Ref ref) => CompanyLogoRepository(
    repositoryHelper: ref.read(
        repositoryHelperProvider(apiConfigName: APIConfigName.apininjas)));

class CompanyLogoRepository {
  final RepositoryHelper _repositoryHelper;

  CompanyLogoRepository({required RepositoryHelper repositoryHelper})
      : _repositoryHelper = repositoryHelper;

  Future<Result<Company>> getCompanyLogos(String symbol) async {
    String endpoint = '/v1/logo?ticker=$symbol';
    return await _repositoryHelper.fetchData(
        endpoint: endpoint,
        fromJson: (json) => Company.fromJson(json));
  }
}
