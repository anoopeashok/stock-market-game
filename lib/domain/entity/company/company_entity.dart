class CompanyEntity{
  final String image;
  final String symbol;
  final String name;
  final String description;
  final String exchange;
  final String currency;
  final String sector;
  final String industry;
  final String marketCapitalization;
  final String peRatio;
  final String dividendPerShare;
  final String dividendYield;
  final String eps;
  final String profitMargin;
  final String returnOnEquity;
  final String revenue;
  final String analystTargetPrice;
  final String weekHigh52;
  final String weekLow52;
  final String dividendDate;

  const CompanyEntity({
    required this.image,
    required this.symbol,
    required this.name,
    required this.description,
    required this.exchange,
    required this.currency,
    required this.sector,
    required this.industry,
    required this.marketCapitalization,
    required this.peRatio,
    required this.dividendPerShare,
    required this.dividendYield,
    required this.eps,
    required this.profitMargin,
    required this.returnOnEquity,
    required this.revenue,
    required this.analystTargetPrice,
    required this.weekHigh52,
    required this.weekLow52,
    required this.dividendDate,
  });
}