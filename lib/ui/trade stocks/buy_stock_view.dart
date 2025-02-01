// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:stock_market_game/domain/entity/company_full_data.dart';
import 'package:stock_market_game/domain/models/stock/stock_hold_model.dart';
import 'package:stock_market_game/ui/trade%20stocks/buy_stock_vm.dart';
import 'package:stock_market_game/utils/dimensions.dart';

void showBuyStockBottomSheet(
    {required BuildContext context, required CompanyFullData fullData}) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return BuyStockView(fullData: fullData);
    },
  );
}

class BuyStockView extends ConsumerStatefulWidget {
  CompanyFullData fullData;
  BuyStockView({
    super.key,
    required this.fullData,
  });
  @override
  ConsumerState<BuyStockView> createState() => _BuyStockViewState();
}

class _BuyStockViewState extends ConsumerState<BuyStockView> {
  final _formKey = GlobalKey<FormState>();
  double _stockCount = 0;
  double consideration = 0;
  double commission = 0;
  double sdrt = 0;
  double totalCost = 0;

  void calcTotalSummary(value) {
    setState(() {
      consideration = widget.fullData.price * double.parse(value);
      commission = double.parse((consideration * .01).toStringAsFixed(2));

      sdrt = double.parse((consideration * 0.05).toStringAsFixed(2));

      totalCost = commission + sdrt + consideration;
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(buyStockVMProvider);
    final notifier = ref.read(buyStockVMProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.size12),
          child: Form(
            key: _formKey,
            child: Column(
              spacing: Dimensions.size12,
              children: [
                Text(
                  "Buy " + widget.fullData.companyInformation.name,
                  style: TextTheme.of(context).headlineMedium,
                ),
                Row(
                  children: [
                    Expanded(child: Text('Cost per share')),
                    Expanded(
                        child: Text(widget.fullData.price.toStringAsFixed(2)))
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text('Quantity')),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [],
                        validator: (value) {
                          setState(() {
                            _stockCount = double.parse(value!);
                            consideration = widget.fullData.price * _stockCount;
                          });
                        },
                        onChanged: (value) => setState(() {
                          calcTotalSummary(value);
                        }),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text('Consideration')),
                    Expanded(child: Text(consideration.toString()))
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text('SDRT')),
                    Expanded(child: Text(sdrt.toString()))
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text('commission')),
                    Expanded(child: Text(commission.toString()))
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(child: Text('Total cost')),
                    Expanded(child: Text(totalCost.toStringAsFixed(2)))
                  ],
                ),
                state.isLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Row(
                        spacing: Dimensions.size12,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          WidgetStatePropertyAll(Colors.red)),
                                  onPressed: () => context.pop(),
                                  child: Text('Cancel'))),
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    await notifier.buyStock(StockHold(
                                        name: widget
                                            .fullData.companyInformation.name,
                                        symbol: widget
                                            .fullData.companyInformation.symbol,
                                        price: widget.fullData.price,
                                        numberOfShares: _stockCount,
                                        totalPrice: consideration,
                                        date: DateTime.now()));
                                    context.pop();
                                  }
                                },
                                child: Text('Confirm')),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
