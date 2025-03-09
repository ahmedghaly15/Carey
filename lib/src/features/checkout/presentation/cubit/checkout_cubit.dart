import 'package:carey/src/features/checkout/data/models/shipping_item.dart';
import 'package:carey/src/features/checkout/presentation/cubit/checkout_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutState.initial());

  void updateSelectedShippingAddress(ShippingItem shippingItem) {
    if (state.selectedShippingAddress == shippingItem) {
      emit(state.copyWith(
        status: CheckoutStateStatus.updateSelectedShippingAddress,
        selectedShippingAddress: shippingItem,
      ));
    }
  }
}
