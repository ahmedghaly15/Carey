import 'package:carey/src/core/models/car.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:carey/src/core/helpers/hive_type_ids.dart';

part 'fetch_my_wishlist_response.g.dart';

@HiveType(typeId: HiveTypeIds.myWishlistResponse)
@JsonSerializable(explicitToJson: true)
class FetchMyWishlistResponse {
  @HiveField(0)
  final List<Wishlist> data;

  FetchMyWishlistResponse({required this.data});

  factory FetchMyWishlistResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchMyWishlistResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchMyWishlistResponseToJson(this);
}

@HiveType(typeId: HiveTypeIds.wishlist)
@JsonSerializable(explicitToJson: true)
class Wishlist {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final Car car;

  Wishlist({required this.id, required this.car});

  factory Wishlist.fromJson(Map<String, dynamic> json) =>
      _$WishlistFromJson(json);
  Map<String, dynamic> toJson() => _$WishlistToJson(this);
}
