import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:carey/src/core/helpers/hive_type_ids.dart';
import 'package:carey/src/core/models/car.dart';

part 'fetch_my_wishlist_response.g.dart';

@HiveType(typeId: HiveTypeIds.myWishlistResponse)
@JsonSerializable(explicitToJson: true)
class FetchMyWishlistResponse {
  @HiveField(0)
  final int totalItems;
  @HiveField(1)
  final int totalPages;
  @HiveField(2)
  final int currentPage;
  @HiveField(3)
  @JsonKey(name: 'data')
  final List<Car> cars;

  FetchMyWishlistResponse({
    required this.totalItems,
    required this.totalPages,
    required this.currentPage,
    required this.cars,
  });

  factory FetchMyWishlistResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchMyWishlistResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchMyWishlistResponseToJson(this);
}
