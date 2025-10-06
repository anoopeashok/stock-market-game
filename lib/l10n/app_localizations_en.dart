// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Stock Market Game';

  @override
  String get portfolio => 'Portfolio';

  @override
  String get topStocks => 'Top Stocks';

  @override
  String get news => 'News';

  @override
  String get economy => 'Economy';

  @override
  String get commodities => 'Commodities';

  @override
  String priceWithValue(double stockprice) {
    return 'Price $stockprice';
  }

  @override
  String get topMarketMovers => 'Top Market Movers';

  @override
  String get myPortfolio => 'My Portfolio';

  @override
  String get investing => 'Investing';

  @override
  String get remaining => 'Remaining';

  @override
  String get marketNews => 'Market News';

  @override
  String summary(String newsSummary) {
    return 'Summary: $newsSummary';
  }

  @override
  String get readMore => 'Read more';

  @override
  String get stock => 'Stock';

  @override
  String get price => 'Price';

  @override
  String get change => 'Change';

  @override
  String get popularStocks => 'Popular Stocks';

  @override
  String get topGainers => 'Top Gainers';

  @override
  String get topLosers => 'Top Losers';

  @override
  String get tradeCount => 'Trade count';

  @override
  String get myStocks => 'My Stocks';

  @override
  String get quote => 'Quote';

  @override
  String get sell => 'Sell';

  @override
  String get marketCapitilization => 'Market Capitilization';

  @override
  String get industry => 'Industry';

  @override
  String get buy => 'Buy';

  @override
  String get costPerShare => 'Cost per share';

  @override
  String get quantity => 'Quantity';

  @override
  String get consideration => 'Consideration';

  @override
  String get comission => 'Comission';

  @override
  String get totalCost => 'Total cost';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';
}
