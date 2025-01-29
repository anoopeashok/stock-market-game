import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/ui/market_mover_stock/stock%20search/stock_search_vm.dart';
import 'package:stock_market_game/utils/dimensions.dart';

import '../../../domain/models/stock/stock_search_model.dart';

class StockSearchbar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stockSearchVMProvider);
    final notifier = ref.read(stockSearchVMProvider.notifier);
    return SearchAnchor(
        builder: (context, controller) => SearchBar(
          elevation: WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.roundedRadius16))),
              hintText: 'Search Stock',
              onChanged: (keyword) async {
                await Future.delayed(Duration(milliseconds: 500));
                notifier.searchStock(keyword);
              },
            ),
        suggestionsBuilder: (context, controller) => []

        );
  }
}
