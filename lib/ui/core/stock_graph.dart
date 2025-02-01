import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_market_game/domain/entity/stock_information_request.dart';
import 'package:stock_market_game/ui/stock/stock_detail_vm.dart';
import 'package:stock_market_game/utils/dimensions.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class StockGraph extends ConsumerStatefulWidget {
  String symbol;

  StockGraph({super.key, required this.symbol});
  @override
  ConsumerState<StockGraph> createState() => _StockGraphState();
}

class _StockGraphState extends ConsumerState<StockGraph> {
  List<String> timeFrame = ['1D', '5D', '1M', '6M', '1Y'];
  int selectedIndex = 0;
  late StockInformationRequest stockInformationRequest;

  TimeFrame _timeFrameMap(int index) {
    switch (index) {
      case 0:
        return TimeFrame.daily;
      case 1:
        return TimeFrame.weekly;
      case 2:
        return TimeFrame.monthly;
      case 3:
        return TimeFrame.halfyear;
      default:
        return TimeFrame.yearly;
    }
  }

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
              stockInformationRequest =
              StockInformationRequest(symbol: widget.symbol,timeFrame: _timeFrameMap(index));

        },
        child: Chip(
          label: Text(timeFrame[index]),
        ));
  }

  @override
  void initState() {
    stockInformationRequest = StockInformationRequest(symbol: widget.symbol);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final stockPrices = ref
        .watch(getHistoricalBarDataProvider(request: stockInformationRequest));
    return Column(
      children: [
        SizedBox(
          height: Dimensions.size20,
        ),
        AspectRatio(
          aspectRatio: 2,
          child: stockPrices.when(
            data: (data)=> SfSparkLineChart(
              color: Theme.of(context).primaryColor,
              axisLineColor: Colors.transparent,
              data: data,
            ),
            loading: ()=> Center(child: CircularProgressIndicator()),
            error: (error, st) => Container(),
          
          ),
        ),
        
        SizedBox(
          height: Dimensions.size20,
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
        ),
        SizedBox(
          height: Dimensions.size14,
        )
      ],
    );
  }
}
