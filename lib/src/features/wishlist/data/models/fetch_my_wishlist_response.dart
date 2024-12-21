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
  final List<WishlistResponseDataItem> data;

  FetchMyWishlistResponse({
    required this.totalItems,
    required this.totalPages,
    required this.currentPage,
    required this.data,
  });

  factory FetchMyWishlistResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchMyWishlistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FetchMyWishlistResponseToJson(this);
}

@HiveType(typeId: HiveTypeIds.wishlist)
@JsonSerializable(explicitToJson: true)
class WishlistResponseDataItem {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final Car car;
  @HiveField(2)
  final List<Wishlist> wishlists;

  WishlistResponseDataItem({
    required this.id,
    required this.car,
    required this.wishlists,
  });

  factory WishlistResponseDataItem.fromJson(Map<String, dynamic> json) =>
      _$WishlistResponseDataItemFromJson(json);
  Map<String, dynamic> toJson() => _$WishlistResponseDataItemToJson(this);
}

@HiveType(typeId: HiveTypeIds.wishlist)
@JsonSerializable(explicitToJson: true)
class Wishlist {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final WishlistUser user;

  Wishlist({required this.id, required this.user});

  factory Wishlist.fromJson(Map<String, dynamic> json) =>
      _$WishlistFromJson(json);
  Map<String, dynamic> toJson() => _$WishlistToJson(this);
}

@HiveType(typeId: HiveTypeIds.wishlistUser)
@JsonSerializable()
class WishlistUser {
  @HiveField(0)
  final int id;

  WishlistUser({required this.id});

  factory WishlistUser.fromJson(Map<String, dynamic> json) =>
      _$WishlistUserFromJson(json);
  Map<String, dynamic> toJson() => _$WishlistUserToJson(this);
}
