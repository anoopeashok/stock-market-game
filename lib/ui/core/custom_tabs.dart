// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stock_market_game/utils/dimensions.dart';

part '../../generated/ui/core/custom_tabs.g.dart';

const double _kTabHeight = 34.0;

@riverpod
class TextTabBarIndex extends _$TextTabBarIndex {
  @override
  int build() => 0;

  void setIndex(int index) => state = index;
}

class TextTabBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final List<String> tabs;
  PageController pageController;
  TextTabBar({super.key, required this.tabs, required this.pageController});

  @override
  Size get preferredSize {
    double maxHeight = _kTabHeight;
    return Size.fromHeight(maxHeight + 2.0);
  }

  @override
  ConsumerState<TextTabBar> createState() => _TextTabBarState();
}

class _TextTabBarState extends ConsumerState<TextTabBar> {
  @override
  void initState() {
    widget.pageController.addListener(() {
      ref
          .read(textTabBarIndexProvider.notifier)
          .setIndex(widget.pageController.page!.toInt());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var tabBarIndex = ref.watch(textTabBarIndexProvider);
    final tabBarIndexNotifier = ref.read(textTabBarIndexProvider.notifier);
    Size size = MediaQuery.sizeOf(context);
    int flexSize = (widget.tabs.length - 1) * 2 + 3;
    final theme = Theme.of(context);
    final textColorSelected =
        theme.colorScheme.onSurface; // Black or white depending on the theme
    final textColorUnselected = theme.colorScheme.onSurface.withAlpha(600);

    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: tabBarIndex * ((size.width / flexSize) * 2),
            width: ((size.width / flexSize) * 3),
            child: Container(
              height: _kTabHeight,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            children: List.generate(widget.tabs.length, (index) {
              return Expanded(
                flex: tabBarIndex == index ? 3 : 2,
                child: AnimatedContainer(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.roundedRadius16)),
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 500),
                  child: GestureDetector(
                    onTap: () {
                      tabBarIndexNotifier.setIndex(index);
                      widget.pageController.animateToPage(index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                    child: Text(
                      widget.tabs[index],
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold,
                          color: tabBarIndex == index
                              ? textColorSelected
                              : textColorUnselected),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
