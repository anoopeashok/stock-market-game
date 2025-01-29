import 'package:flutter/material.dart';
import 'package:stock_market_game/domain/models/company%20information/company_logo_model.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class StockTagView extends StatelessWidget {
  StockTagView({super.key, required this.company});

  Company company;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: Dimensions.size8,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Image.network(
            company.image,
            width: 30, // Diameter of the circle
            height: 30, // Diameter of the circle
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: Dimensions.size4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                company.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(company.ticker)
            ],
          ),
        ),
        SizedBox(
          width: Dimensions.size8,
        )
      ],
    );
  }
}
