import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/payment_methods/data/models/payment_method.dart';

part 'payment_methods_state.freezed.dart';

enum PaymentMethodsStateStatus {
  initial,
  selectPaymentMethod,
}

@freezed
sealed class PaymentMethodsState with _$PaymentMethodsState {
  const factory PaymentMethodsState({
    required PaymentMethodsStateStatus status,
    PaymentMethod? selectedPaymentMethod,
  }) = _PaymentMethodsState;

  factory PaymentMethodsState.initial() => const PaymentMethodsState(
        status: PaymentMethodsStateStatus.initial,
      );
}
