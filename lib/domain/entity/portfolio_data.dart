// ignore_for_file: public_member_api_docs, sort_constructors_first
class PortfolioData {
  List<double> stockPrices;
  List<PortfolioItem> items;
  double initialInvestment,
      investedAmount,
      investedChange,
      investedChangePercentage;

  PortfolioData(
      {required this.initialInvestment,
      required this.stockPrices,
      required this.investedAmount,
      required this.investedChange,
      required this.investedChangePercentage,
      required this.items});

  factory PortfolioData.emptyObject() => PortfolioData(
      initialInvestment: 0,
      stockPrices: [],
      investedAmount: 0,
      investedChange: 0,
      investedChangePercentage: 0,
      items: []);
}

class PortfolioItem {
  double currentPrice, priceChange, priceChangePercentage;
  String name, image, symbol;
  PortfolioItem(
      {required this.priceChangePercentage,
      required this.currentPrice,
      required this.priceChange,
      required this.symbol,
      required this.image,
      required this.name});
}
