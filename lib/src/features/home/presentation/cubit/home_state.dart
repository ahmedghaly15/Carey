import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/data/models/fetch_special_offers_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStateStatus {
  initial,
  updateSelectedTopDealBrand,
  fetchHomeDataLoading,
  fetchHomeDataSuccess,
  fetchHomeDataFailure,
  switchShowAllBrands,
  fetchSpecialOffersLoading,
  fetchSpecialOffersSuccess,
  fetchSpecialOffersError,
  filterBestCarsByBrand,
}

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStateStatus status,
    @Default(0) int currentSelectedTopDealBrand,
    HomeResponseData? homeData,
    String? error,
    @Default(false) bool showAllBrands,
    FetchSpecialOffersResponse? specialOffers,
    List<Car>? bestCars,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStateStatus.initial,
      );
}
