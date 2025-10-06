import 'package:equatable/equatable.dart';

class NaturalGasPriceEntity extends Equatable {
  final String name;
  final String interval;
  final String unit;
  final List<NaturalGasPriceDataEntity> data;

  const NaturalGasPriceEntity({
    required this.name,
    required this.interval,
    required this.unit,
    required this.data,
  });

  @override
  List<Object?> get props => [name, interval, unit, data];
}

class NaturalGasPriceDataEntity extends Equatable {
  final DateTime date;
  final double? value;

  const NaturalGasPriceDataEntity({
    required this.date,
    required this.value,
  });

  @override
  List<Object?> get props => [date, value];
}