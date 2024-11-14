import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial()) {
    specialOffersController = PageController(
        // viewportFraction: 0.5,
        );
  }

  late final PageController specialOffersController;

  void changeCurrentSpecialOffer(int index) {
    if (index != state.currentSpecialOffer) {
      emit(state.copyWith(
        status: HomeStateStatus.changeCurrentSpecialOffer,
        currentSpecialOffer: index,
      ));
    }
  }
}
