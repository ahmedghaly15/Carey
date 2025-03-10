import 'package:carey/src/features/payment_methods/data/models/payment_method.dart';
import 'package:carey/src/features/payment_methods/presentation/cubit/payment_methods_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodsCubit extends Cubit<PaymentMethodsState> {
  PaymentMethodsCubit() : super(PaymentMethodsState.initial());

  void selectPaymentMethod(PaymentMethod paymentMethod) {
    if (state.selectedPaymentMethod != paymentMethod) {
      emit(state.copyWith(selectedPaymentMethod: paymentMethod));
    }
  }
}
