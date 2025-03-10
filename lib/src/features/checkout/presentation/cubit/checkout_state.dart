import 'package:carey/src/features/checkout/data/models/shipping_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/checkout/data/models/shipping_address.dart';

part 'checkout_state.freezed.dart';

enum CheckoutStateStatus {
  initial,
  updateShippingAddress,
  updateShippingMethod,
}

@freezed
sealed class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    required CheckoutStateStatus status,
    ShippingAddress? selectedShippingAddress,
    ShippingMethod? selectedShippingMethod,
  }) = _CheckoutState;

  factory CheckoutState.initial() => const CheckoutState(
        status: CheckoutStateStatus.initial,
      );
}
