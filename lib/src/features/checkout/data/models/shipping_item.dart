import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_item.freezed.dart';

@freezed
sealed class ShippingItem with _$ShippingItem {
  const factory ShippingItem({
    required String title,
    required String subTitleText,
    String? shippingMethodPrice,
    String? imgPath,
    @Default(false) bool hasDefaultBadge,
  }) = _ShippingItem;
}
