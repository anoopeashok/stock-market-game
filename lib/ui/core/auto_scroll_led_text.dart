

import 'package:flutter/material.dart';

class AutoScrollingLED extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Color backgroundColor;
  final Duration scrollSpeed;

  const AutoScrollingLED({
    super.key,
    required this.text,
    this.textStyle,
    this.backgroundColor = Colors.black,
    this.scrollSpeed = const Duration(seconds: 10),
  });

  @override
  State<AutoScrollingLED> createState() => _AutoScrollingLEDState();
}

class _AutoScrollingLEDState extends State<AutoScrollingLED>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.scrollSpeed,
    )..addListener(() {
        // Smoothly animate the scroll offset
        _scrollController.jumpTo(_animationController.value *
            _scrollController.position.maxScrollExtent);
      });

    // Start scrolling
    WidgetsBinding.instance.addPostFrameCallback((_) => _startScrolling());
  }

  void _startScrolling() {
    if (_scrollController.hasClients) {
      _animationController.repeat();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      height: 50, // Height of the LED display
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        itemCount: 2, // Repeat the text twice to create a continuous loop
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              widget.text,
              style: widget.textStyle ??
                  const TextStyle(
                    fontFamily: 'Karnivore',
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
            ),
          );
        },
      ),
    );
  }
}
