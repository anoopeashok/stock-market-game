import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../domain/entity/stock_information_request.dart';
import '../../utils/dimensions.dart';

class TimeframeSelectionView extends StatefulWidget {
  TimeframeSelectionView({super.key, required this.selectedTimeFrame});
  void Function(TimeFrame) selectedTimeFrame;

  @override
  State<TimeframeSelectionView> createState() => _TimeframeSelectionViewState();
}

class _TimeframeSelectionViewState extends State<TimeframeSelectionView> {
  List<String> timeFrame = ['1D', '5D', '1M', '6M', '1Y'];
  int selectedIndex = 0;

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
          widget.selectedTimeFrame(_timeFrameMap(index));
        },
        child: Chip(
          label: Text(timeFrame[index]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: Dimensions.size12,
        children: [
          for (int i = 0; i < timeFrame.length; i++)
            selectedIndex == i ? selectedChip(i) : unSelectedIndex(i)
        ],
      ),
    );
  }
}
