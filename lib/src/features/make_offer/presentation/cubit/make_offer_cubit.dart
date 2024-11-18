import 'package:carey/src/features/make_offer/presentation/cubit/make_offer_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MakeOfferCubit extends Cubit<MakeOfferState> {
  MakeOfferCubit() : super(MakeOfferState.initial());

  void _updateSelectedOfferAmount(int offer) {
    emit(state.copyWith(
      status: MakeOfferStateStatus.updateSelectedOffer,
      selectedOffer: offer,
    ));
  }

  void updateSelectedOffer({
    required int index,
    required int offer,
  }) {
    if (state.selectedOfferIndex != index) {
      _updatedSelectedOfferIndex(index);
      _updateSelectedOfferAmount(offer);
    } else {
      _unSelectTheOffer();
      _makeSelectedOfferZero();
    }
  }

  void _updatedSelectedOfferIndex(int index) {
    emit(state.copyWith(
      status: MakeOfferStateStatus.updateSelectedOfferIndex,
      selectedOfferIndex: index,
    ));
  }

  void _makeSelectedOfferZero() {
    emit(state.copyWith(
      status: MakeOfferStateStatus.updateSelectedOffer,
      selectedOffer: 0,
    ));
  }

  void _unSelectTheOffer() {
    emit(state.copyWith(
      status: MakeOfferStateStatus.updateSelectedOfferIndex,
      selectedOfferIndex: -1,
    ));
  }
}
