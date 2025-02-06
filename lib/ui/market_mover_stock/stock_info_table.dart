// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_market_game/domain/entity/popular_stock.dart';
import 'package:stock_market_game/routing/router.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class PopularStockView extends StatelessWidget {
    final List<PopularStock> popularStockList;

  const PopularStockView({super.key, required this.popularStockList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: Dimensions.size20,
        children: [
                         for (int i = 0; i < popularStockList.length; i++)

          InkWell(
            onTap:()=> context.goNamed(AppRoutes.stockdetail.name,extra: popularStockList[i].symbol),
            child: Column(
              spacing: Dimensions.size4,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Image.network(
                      popularStockList[i].image,
                      width: 40, // Diameter of the circle
                      height: 40, // Diameter of the circle
                    ),
                  ),
            
                
                    Text(
                        popularStockList[i].symbol,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    Text(
                        '${popularStockList[i].priceChangePercentage}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: popularStockList[i].priceChangePercentage > 0
                                ? Colors.green
                                : Colors.red),
                      )
                
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
