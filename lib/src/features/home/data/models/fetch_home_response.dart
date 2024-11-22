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

@JsonSerializable(explicitToJson: true)
class HomeResponseData {
  final List<CarBrand> brands;
  final List<Car> bestOffers;
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

@JsonSerializable(explicitToJson: true)
class Car {
  final int id;
  final String name, type, price;
  final CarBrand brand;
  final List<CarAttachment> attachments;
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

@JsonSerializable()
class CarBrand {
  final int id;
  final String name;
  final String? image;

  CarBrand({
    required this.id,
    required this.name,
    this.image,
  });

  factory CarBrand.fromJson(Map<String, dynamic> json) =>
      _$CarBrandFromJson(json);
  Map<String, dynamic> toJson() => _$CarBrandToJson(this);
}

@JsonSerializable()
class CarAttachment {
  final int id;
  final String type, url;

  CarAttachment({
    required this.id,
    required this.type,
    required this.url,
  });

  factory CarAttachment.fromJson(Map<String, dynamic> json) =>
      _$CarAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$CarAttachmentToJson(this);
}

@JsonSerializable()
class CarRate {
  final int id;
  final double rate;

  CarRate({required this.id, required this.rate});

  factory CarRate.fromJson(Map<String, dynamic> json) =>
      _$CarRateFromJson(json);

  Map<String, dynamic> toJson() => _$CarRateToJson(this);
}
