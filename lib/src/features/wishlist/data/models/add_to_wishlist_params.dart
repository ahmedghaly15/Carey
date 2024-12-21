import 'package:json_annotation/json_annotation.dart';

part 'add_to_wishlist_params.g.dart';

@JsonSerializable()
class AddToWishlistParams {
  final int carId;

  AddToWishlistParams({required this.carId});

  Map<String, dynamic> toJson() => _$AddToWishlistParamsToJson(this);
}
