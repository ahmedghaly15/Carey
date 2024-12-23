import 'package:carey/src/core/helpers/hive_type_ids.dart';
import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/models/carey_user.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fetch_rates_response.g.dart';

@HiveType(typeId: HiveTypeIds.fetchRatesResponse)
@JsonSerializable(explicitToJson: true)
class FetchRatesResponse {
  @HiveField(0)
  final int totalItems;
  @HiveField(1)
  final int totalPages;
  @HiveField(2)
  final int currentPage;
  @HiveField(3)
  @JsonKey(name: 'data')
  final List<RateResponseItem> rates;

  FetchRatesResponse({
    required this.totalItems,
    required this.totalPages,
    required this.currentPage,
    required this.rates,
  });

  factory FetchRatesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchRatesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchRatesResponseToJson(this);
}

@HiveType(typeId: HiveTypeIds.rateResponseItem)
@JsonSerializable(explicitToJson: true)
class RateResponseItem {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int rate;
  @HiveField(2)
  final String comment;
  @HiveField(3)
  final String createdAt;
  @HiveField(4)
  final CareyUser user;
  @HiveField(5)
  final CarUser car;

  RateResponseItem({
    required this.id,
    required this.rate,
    required this.comment,
    required this.createdAt,
    required this.user,
    required this.car,
  });

  factory RateResponseItem.fromJson(Map<String, dynamic> json) =>
      _$RateResponseItemFromJson(json);
  Map<String, dynamic> toJson() => _$RateResponseItemToJson(this);
}
