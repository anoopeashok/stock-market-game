// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:stock_market_game/domain/entity/top_market_movers_entity.dart';
import 'package:stock_market_game/ui/stock/stock_tag_view.dart';
import 'package:stock_market_game/utils/dimensions.dart';

class GainerLoserInfoTable extends StatelessWidget {
  final List<TopMarketMoversEntityItem> topMarketMoversEntityItem;

  const GainerLoserInfoTable({
    super.key,
    required this.topMarketMoversEntityItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(Dimensions.size14),
          color: Theme.of(context).colorScheme.secondaryContainer,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Stock",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "price",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Change",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        for (int i = 0; i < topMarketMoversEntityItem.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size14, vertical: Dimensions.size12),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: StockTagView(
                        company: topMarketMoversEntityItem[i].company)),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${topMarketMoversEntityItem[i].topMarketMoversModel.price}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${topMarketMoversEntityItem[i].topMarketMoversModel.percentagechange}',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: topMarketMoversEntityItem[i]
                                    .topMarketMoversModel
                                    .change >
                                0
                            ? Colors.green
                            : Colors.red),
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
