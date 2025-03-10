import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address.freezed.dart';

@freezed
sealed class ShippingAddress with _$ShippingAddress {
  const factory ShippingAddress({
    required String title,
    required String description,
    @Default(false) bool hasDefaultBadge,
  }) = _ShippingAddress;
}
