import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:carey/src/core/helpers/hive_type_ids.dart';

part 'car.g.dart';

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
  final CarBrandModel? brand;
  @HiveField(5)
  final List<CarAttachment> attachments;
  @HiveField(6)
  final List<CarRate>? rates;
  @HiveField(7)
  final CarUser? user;

  Car({
    required this.id,
    required this.name,
    required this.type,
    required this.price,
    this.brand,
    required this.attachments,
    this.rates,
    this.user,
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

@HiveType(typeId: HiveTypeIds.carUser)
@JsonSerializable()
class CarUser {
  @HiveField(0)
  final int id;

  CarUser({required this.id});

  factory CarUser.fromJson(Map<String, dynamic> json) =>
      _$CarUserFromJson(json);
  Map<String, dynamic> toJson() => _$CarUserToJson(this);
}
