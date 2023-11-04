import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kt5/models/car/car.dart';

part 'CarData.freezed.dart';
part 'CarData.g.dart';

@freezed
class CarData with _$CarData {
  factory CarData({
    @Default([]) List<Car> cars,
  }) = _CarData;

  factory CarData.fromJson(Map<String, dynamic> json) =>
      _$CarDataFromJson(json);
}