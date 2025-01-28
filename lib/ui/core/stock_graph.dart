import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_market_game/ui/stock/stock_detail_vm.dart';
import 'package:stock_market_game/utils/dimensions.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class StockGraph extends ConsumerStatefulWidget {
  List<double> prices;
  void Function() callBack;

  StockGraph({super.key, required this.prices, required this.callBack});
  @override
  ConsumerState<StockGraph> createState() => _StockGraphState();
}

class _StockGraphState extends ConsumerState<StockGraph> {
  List<String> timeFrame = ['1D', '5D', '1M', '6M', '1Y'];
  int selectedIndex = 0;

  Widget selectedChip(int index) {
    return Chip(
        backgroundColor: Theme.of(context).primaryColor,
        label: Text(
          timeFrame[index],
          style: TextStyle(color: Colors.white),
        ));
  }

  Widget unSelectedIndex(int index) {
    return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          widget.callBack();
        },
        child: Chip(
          label: Text(timeFrame[index]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
            aspectRatio: 2,
            child: SfSparkLineChart(
              color: Theme.of(context).primaryColor,
              axisLineColor: Colors.transparent,
              data: widget.prices,
            )),
            SizedBox(
              height: Dimensions.size32,
            ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: Dimensions.size12,
            children: [
              for (int i = 0; i < timeFrame.length; i++)
                selectedIndex == i ? selectedChip(i) : unSelectedIndex(i)
            ],
          ),
        )
      ],
    );
  }
}
