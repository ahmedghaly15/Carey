import 'package:carey/src/features/home/data/repositories/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void updateSelectedTopDealBrand(int index) {
    if (index != state.currentSelectedTopDealBrand) {
      emit(state.copyWith(
        status: HomeStateStatus.updateSelectedTopDealBrand,
        currentSelectedTopDealBrand: index,
      ));
    }
  }

  void fetchHome() async {
    emit(state.copyWith(
      status: HomeStateStatus.fetchHomeDataLoading,
    ));
    final result = await _homeRepo.fetchHome();
    result.when(
      success: (homeData) => emit(state.copyWith(
        status: HomeStateStatus.fetchHomeDataSuccess,
        homeData: homeData,
      )),
      failure: (failure) => emit(state.copyWith(
        status: HomeStateStatus.fetchHomeDataFailure,
        error: failure.error[0],
      )),
    );
  }
}
