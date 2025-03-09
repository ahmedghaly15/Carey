import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_item.freezed.dart';

@freezed
sealed class ShippingItem with _$ShippingItem {
  const factory ShippingItem({
    required String title,
    String? subTitleText,
    Widget? subTitleWidget,
    String? imgPath,
    @Default(false) bool hasDefaultBadge,
  }) = _ShippingItem;
}
