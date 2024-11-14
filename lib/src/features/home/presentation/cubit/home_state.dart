import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStateStatus {
  initial,
  changeCurrentSpecialOffer,
  updateSelectedTopDealBrand,
}

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStateStatus status,
    @Default(0) int currentSpecialOffer,
    @Default(0) int currentSelectedTopDealBrand,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStateStatus.initial,
      );
}
