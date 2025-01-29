class Company {
  final String name, ticker, image;
  Company({
    required  this.name,
    required this.ticker,
    required this.image,
  });

  factory Company.fromJson(List<dynamic> json) {
    final mapJson = json.isEmpty ? {} : json[0];
    return Company(
        name: mapJson['name'] ?? '',
        ticker: mapJson['ticker'] ?? '',
        image: mapJson['image'] ?? 'https://img.freepik.com/premium-vector/stock-market-icon-logo-element-illustration-stock-market-symbol-design-from-2-colored-collection-simple-stock-market-concept-can-be-used-web-mobile_159242-5117.jpg?w=1060');
  }
}
