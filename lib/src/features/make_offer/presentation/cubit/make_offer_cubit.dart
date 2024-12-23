import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeOfferCubit extends Cubit<MakeOfferState> {
  MakeOfferCubit() : super(MakeOfferState.initial());

  void updateSelectedOffer({
    required int index,
    required int offer,
  }) {
    // Check if the offer is not selected
    final isNotSelected = state.selectedOfferIndex != index;

    emit(state.copyWith(
      status: MakeOfferStateStatus.updateSelectedOffer,
      selectedOfferIndex: isNotSelected ? index : -1,
      selectedOffer: isNotSelected ? offer : 0,
    ));
  }
}
