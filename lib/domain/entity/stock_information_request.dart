// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum TimeFrame{
  daily,
  weekly,
  monthly,
  halfyear,
  yearly
  
}

class StockInformationRequest extends Equatable {
  final String _symbol;
  final TimeFrame _timeFrame;

  StockInformationRequest(
      {required String symbol, TimeFrame timeFrame = TimeFrame.daily})
      : _symbol = symbol,
        _timeFrame = timeFrame;

  String get startDate {
    final currentDate = DateTime.now();
    switch (_timeFrame) {
      case TimeFrame.daily:
        return currentDate.subtract(Duration(days: 1)).toString();
      case TimeFrame.weekly:
        return currentDate.subtract(Duration(days: 5)).toString();
      case TimeFrame.monthly:
        return currentDate.subtract(Duration(days: 30)).toString();
      case TimeFrame.halfyear:
        return currentDate.subtract(Duration(days: 180)).toString();
      case TimeFrame.yearly:
        return currentDate.subtract(Duration(days: 365)).toString();
    }
  }

  String get endDate {
    final currrentDate = DateTime.now();
    return "${currrentDate.year}-${currrentDate.month}-${currrentDate.day}";
  }

  String get timeFrame {
    switch (_timeFrame) {
      case TimeFrame.daily:
        return '1H';
      case TimeFrame.weekly:
        return '1D';
      case TimeFrame.monthly:
        return '1D';
      case TimeFrame.halfyear:
        return '1W';
      case TimeFrame.yearly:
        return '1M';
    }
  }

  String get symbol => _symbol;

  @override
  List<Object> get props => [_symbol, _timeFrame];
}
