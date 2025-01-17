import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/home/data/repositories/home_repo.dart';
import 'package:carey/src/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.initial());

  final CancelToken _cancelToken = CancelToken();

  void updateSelectedTopDealBrand(int index) {
    if (index != state.currentSelectedTopDealBrand) {
      emit(state.copyWith(
        status: HomeStateStatus.updateSelectedTopDealBrand,
        currentSelectedTopDealBrand: index,
      ));
    }
  }

  Future<void> fetchHome() async {
    emit(state.copyWith(
      status: HomeStateStatus.fetchHomeDataLoading,
    ));
    final result = await _homeRepo.fetchHome(_cancelToken);
    result.when(
      success: (homeData) => emit(state.copyWith(
        status: HomeStateStatus.fetchHomeDataSuccess,
        homeData: homeData,
        bestCars: homeData.bestCars,
      )),
      failure: (failure) => emit(state.copyWith(
        status: HomeStateStatus.fetchHomeDataFailure,
        error: failure.error[0],
      )),
    );
  }

  void switchShowAllBrands() {
    emit(state.copyWith(
      status: HomeStateStatus.switchShowAllBrands,
      showAllBrands: !state.showAllBrands,
    ));
  }

  Future<void> fetchSpecialOffers() async {
    emit(state.copyWith(
      status: HomeStateStatus.fetchSpecialOffersLoading,
    ));
    final result = await _homeRepo.fetchSpecialOffers(_cancelToken);
    result.when(
      success: (specialOffers) => emit(state.copyWith(
        status: HomeStateStatus.fetchSpecialOffersSuccess,
        specialOffers: specialOffers,
      )),
      failure: (failure) => emit(state.copyWith(
        status: HomeStateStatus.fetchSpecialOffersError,
        error: failure.error[0],
      )),
    );
  }

  void filterBestCarsByBrand(String brandName) {
    if (brandName == 'All') {
      emit(state.copyWith(
        status: HomeStateStatus.filterBestCarsByBrand,
        bestCars: state.homeData!.bestCars,
      ));
    } else {
      emit(state.copyWith(
        status: HomeStateStatus.filterBestCarsByBrand,
        bestCars: state.homeData!.bestCars
            .where((car) => car.brand!.name == brandName)
            .toList(),
      ));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
