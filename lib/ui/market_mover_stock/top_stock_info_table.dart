// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:stock_market_game/domain/entity/popular_stock.dart';
import 'package:stock_market_game/ui/stock/stock_tag_view.dart';
import 'package:stock_market_game/utils/dimensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TopStockInfoTable extends StatelessWidget {
  final List<PopularStock> popularStockList;

  const TopStockInfoTable({
    super.key,
    required this.popularStockList,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
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
                  l10n!.stock,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  l10n.tradeCount,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    l10n.change,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        for (int i = 0; i < popularStockList.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.size14, vertical: Dimensions.size12),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: StockTagView(company: popularStockList[i].company)),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${popularStockList[i].tradeCount}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '${popularStockList[i].priceChangePercentage}',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: popularStockList[i].priceChangePercentage > 0
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
