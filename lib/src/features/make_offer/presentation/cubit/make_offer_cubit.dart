import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeOfferCubit extends Cubit<MakeOfferState> {
  MakeOfferCubit() : super(MakeOfferState.initial());

  void updateSelectedOffer({
    required int index,
    required int offer,
  }) {
    // Check if the offer is not selected and update accordingly
    final isNotSelected = state.selectedOfferIndex != index;

    // Emit the updated state for the selected index
    emit(state.copyWith(
      status: MakeOfferStateStatus.updateSelectedOfferIndex,
      selectedOfferIndex: isNotSelected ? index : -1,
    ));

    // Emit the updated state for the offer amount
    emit(state.copyWith(
      status: MakeOfferStateStatus.updateSelectedOffer,
      selectedOffer: isNotSelected ? offer : 0,
    ));
  }
}
