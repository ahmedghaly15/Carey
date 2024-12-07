import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:carey/src/core/helpers/hive_type_ids.dart';
import 'package:carey/src/core/models/car.dart';

part 'fetch_special_offers_response.g.dart';

@HiveType(typeId: HiveTypeIds.specialOffersData)
@JsonSerializable(explicitToJson: true)
class FetchSpecialOffersResponse {
  @HiveField(0)
  final List<SpecialOffer> data;

  FetchSpecialOffersResponse({required this.data});

  factory FetchSpecialOffersResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchSpecialOffersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchSpecialOffersResponseToJson(this);
}

@HiveType(typeId: HiveTypeIds.specialOffer)
@JsonSerializable(explicitToJson: true)
class SpecialOffer {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int discount;
  @HiveField(2)
  final String type;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final Car car;

  SpecialOffer({
    required this.id,
    required this.discount,
    required this.type,
    required this.description,
    required this.car,
  });

  factory SpecialOffer.fromJson(Map<String, dynamic> json) =>
      _$SpecialOfferFromJson(json);
  Map<String, dynamic> toJson() => _$SpecialOfferToJson(this);
}
