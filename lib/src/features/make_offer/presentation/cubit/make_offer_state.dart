import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_offer_state.freezed.dart';

enum MakeOfferStateStatus {
  initial,
  updateSelectedOffer,
}

@freezed
class MakeOfferState with _$MakeOfferState {
  const factory MakeOfferState({
    required MakeOfferStateStatus status,
    @Default(0) int selectedOffer,
    @Default(-1) int selectedOfferIndex,
  }) = _MakeOfferState;

  factory MakeOfferState.initial() =>
      const MakeOfferState(status: MakeOfferStateStatus.initial);
}
