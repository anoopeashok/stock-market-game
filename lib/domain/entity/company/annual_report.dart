class AnnualReportEntity {
  final String symbol;
  final String fiscalDateEnding;
  final String totalAssets;
  final String totalCurrentAssets;
  final String cashAndEquivalents;
  final String totalLiabilities;
  final String currentDebt;
  final String longTermDebt;
  final String totalShareholderEquity;
  final String retainedEarnings;
  final String sharesOutstanding;

  const AnnualReportEntity({
    required this.symbol,
    required this.fiscalDateEnding,
    required this.totalAssets,
    required this.totalCurrentAssets,
    required this.cashAndEquivalents,
    required this.totalLiabilities,
    required this.currentDebt,
    required this.longTermDebt,
    required this.totalShareholderEquity,
    required this.retainedEarnings,
    required this.sharesOutstanding,
  });
}

