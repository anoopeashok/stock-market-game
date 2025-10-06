
import 'package:equatable/equatable.dart';

class OilPriceEntity extends Equatable{
  final String name;
  final String interval;
  final String unit;
  final List<OilPriceDataEntity> data;

  const OilPriceEntity({
    required this.name,
    required this.interval,
    required this.unit,
    required this.data,
  });

  @override
  List<Object?> get props => [name, interval, unit, data];
}

class OilPriceDataEntity extends Equatable{
  final DateTime date;
  final double? value;

  const OilPriceDataEntity({
    required this.date,
    required this.value,
  });

  @override
  List<Object?> get props => [date, value];
}