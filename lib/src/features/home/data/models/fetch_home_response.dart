import 'package:carey/src/core/helpers/hive_type_ids.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

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

@HiveType(typeId: HiveTypeIds.car)
@JsonSerializable(explicitToJson: true)
class Car {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String type;
  @HiveField(3)
  final String price;
  @HiveField(4)
  final CarBrandModel brand;
  @HiveField(5)
  final List<CarAttachment> attachments;
  @HiveField(6)
  final List<CarRate> rates;

  Car({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
    required this.brand,
    required this.attachments,
    required this.rates,
  });

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}

@HiveType(typeId: HiveTypeIds.carBrandModel)
@JsonSerializable()
class CarBrandModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String? image;

  CarBrandModel({
    required this.id,
    required this.name,
    this.image,
  });

  factory CarBrandModel.fromJson(Map<String, dynamic> json) =>
      _$CarBrandModelFromJson(json);
  Map<String, dynamic> toJson() => _$CarBrandModelToJson(this);
}

@HiveType(typeId: HiveTypeIds.carAttachment)
@JsonSerializable()
class CarAttachment {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String type;
  @HiveField(2)
  final String url;

  CarAttachment({
    required this.id,
    required this.type,
    required this.url,
  });

  factory CarAttachment.fromJson(Map<String, dynamic> json) =>
      _$CarAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$CarAttachmentToJson(this);
}

@HiveType(typeId: HiveTypeIds.carRate)
@JsonSerializable()
class CarRate {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final double rate;

  CarRate({required this.id, required this.rate});

  factory CarRate.fromJson(Map<String, dynamic> json) =>
      _$CarRateFromJson(json);

  Map<String, dynamic> toJson() => _$CarRateToJson(this);
}
