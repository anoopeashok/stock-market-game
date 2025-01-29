// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum TimeFrame { daily, weekly, monthly, halfyear, yearly }

class StockInformationRequest extends Equatable {
  final String _symbol;
  final TimeFrame _timeFrame;

  StockInformationRequest(
      {required String symbol, TimeFrame timeFrame = TimeFrame.daily})
      : _symbol = symbol,
        _timeFrame = timeFrame;

  String get startDate {
    final currentDate = DateTime.now();
    DateTime startDate;
    switch (_timeFrame) {
      case TimeFrame.daily:
        startDate = currentDate.subtract(Duration(days: 1));
        break;
      case TimeFrame.weekly:
        startDate = currentDate.subtract(Duration(days: 5));
        break;
      case TimeFrame.monthly:
        startDate = currentDate.subtract(Duration(days: 30));
        break;
      case TimeFrame.halfyear:
        startDate = currentDate.subtract(Duration(days: 180));
        break;
      case TimeFrame.yearly:
        startDate = currentDate.subtract(Duration(days: 365));
        break;
    }
    return DateFormat('yyyy-MM-dd').format(startDate);
  }

  String get endDate {
    final currrentDate = DateTime.now();
    return DateFormat('yyyy-MM-dd').format(currrentDate);
  }

  String get timeFrame {
    switch (_timeFrame) {
      case TimeFrame.daily:
        return '5T';
      case TimeFrame.weekly:
        return '1H';
      case TimeFrame.monthly:
        return '1D';
      case TimeFrame.halfyear:
        return '1D';
      case TimeFrame.yearly:
        return '1W';
    }
  }

  String get symbol => _symbol;

  @override
  List<Object> get props => [_symbol, _timeFrame];
}
