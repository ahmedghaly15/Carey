import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  void updateSelectedTopDealBrand(int index) {
    if (index != state.currentSelectedTopDealBrand) {
      emit(state.copyWith(
        status: HomeStateStatus.updateSelectedTopDealBrand,
        currentSelectedTopDealBrand: index,
      ));
    }
  }
}
