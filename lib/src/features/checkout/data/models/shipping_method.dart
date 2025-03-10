import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_method.freezed.dart';

@freezed
sealed class ShippingMethod with _$ShippingMethod {
  const factory ShippingMethod({
    required String name,
    required String description,
    required String img,
    required int price,
  }) = _ShippingMethod;
}
