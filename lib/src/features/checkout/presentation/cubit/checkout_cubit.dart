import 'package:carey/src/features/checkout/data/models/shipping_method.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/checkout/data/models/shipping_address.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutState.initial());

  void updateShippingAddress(ShippingAddress shippingAddress) {
    if (state.selectedShippingAddress != shippingAddress) {
      emit(state.copyWith(
        status: CheckoutStateStatus.updateShippingAddress,
        selectedShippingAddress: shippingAddress,
      ));
    }
  }

  void updateShippingMethod(ShippingMethod shippingMethod) {
    if (state.selectedShippingMethod != shippingMethod) {
      emit(state.copyWith(
        status: CheckoutStateStatus.updateShippingMethod,
        selectedShippingMethod: shippingMethod,
      ));
    }
  }
}
