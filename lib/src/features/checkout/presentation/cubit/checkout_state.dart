import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/checkout/data/models/shipping_item.dart';

part 'checkout_state.freezed.dart';

enum CheckoutStateStatus {
  initial,
  updateSelectedShippingAddress,
}

@freezed
sealed class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    required CheckoutStateStatus status,
    ShippingItem? selectedShippingAddress,
  }) = _CheckoutState;

  factory CheckoutState.initial() => const CheckoutState(
        status: CheckoutStateStatus.initial,
      );
}
