import 'package:flutter/material.dart';

class CustomTabController extends ChangeNotifier {
  int _selectedIndex = 0;
  CustomTabController();

  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  int getIndex() => _selectedIndex;
}


