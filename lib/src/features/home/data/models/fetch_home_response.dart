import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:carey/src/core/helpers/hive_type_ids.dart';
import 'package:carey/src/core/models/car.dart';

part 'fetch_home_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchHomeResponse {
  final String message;
  final HomeResponseData data;
  final int statusCode;

  FetchHomeResponse({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory FetchHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FetchHomeResponseToJson(this);
}

@HiveType(typeId: HiveTypeIds.homeResponseData)
@JsonSerializable(explicitToJson: true)
class HomeResponseData {
  @HiveField(0)
  final List<CarBrandModel> brands;
  @HiveField(1)
  final List<Car> bestOffers;
  @HiveField(2)
  final List<Car> bestCars;

  HomeResponseData({
    required this.brands,
    required this.bestOffers,
    required this.bestCars,
  });

  factory HomeResponseData.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$HomeResponseDataToJson(this);
}
