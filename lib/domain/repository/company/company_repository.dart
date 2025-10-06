import 'package:stock_market_game/domain/entity/company/company_entity.dart';

abstract class CompanyRepository {
  Future<CompanyEntity> getCompanyDetails(String symbol);
}
