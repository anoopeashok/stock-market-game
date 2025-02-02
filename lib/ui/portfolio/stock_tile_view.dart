// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:stock_market_game/domain/entity/portfolio_data.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/ui/stock/stock_tag_view.dart';

class StockTileView extends StatelessWidget {
  PortfolioItem portfolioItem;
  StockTileView({
    super.key,
    required this.portfolioItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: StockTagView(
                company: Company(
                    name: portfolioItem.name,
                    ticker: portfolioItem.symbol,
                    image: portfolioItem.image)),
          ),
          Expanded(
            child: Text(
              "${portfolioItem.priceChangePercentage}%",
              style: TextStyle(
                color:
                    portfolioItem.priceChange > 0 ? Colors.green : Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Text(
              portfolioItem.priceChange.toString(),
              style: TextStyle(
                color:
                    portfolioItem.priceChange > 0 ? Colors.green : Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
