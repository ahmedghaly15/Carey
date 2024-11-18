import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeOfferCubit extends Cubit<MakeOfferState> {
  MakeOfferCubit() : super(MakeOfferState.initial());

  void _updateSelectedOffer(int offer) {
    if (offer != state.selectedOffer) {
      emit(state.copyWith(
        status: MakeOfferStateStatus.updateSelectedOffer,
        selectedOffer: offer,
      ));
    }
  }

  void updateSelectedOfferIndex({
    required int index,
    required int offer,
  }) {
    if (state.selectedOfferIndex != index) {
      emit(state.copyWith(
        status: MakeOfferStateStatus.updateSelectedOfferIndex,
        selectedOfferIndex: index,
      ));
      _updateSelectedOffer(offer);
    }
  }
}
