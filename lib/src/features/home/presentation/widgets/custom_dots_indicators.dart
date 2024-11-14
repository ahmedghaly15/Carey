import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/cubit/home_state.dart';
import 'package:carey/src/features/home/presentation/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDotsIndicators extends StatelessWidget {
  const CustomDotsIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Padding(
          padding: EdgeInsetsDirectional.only(end: 2.w),
          child: BlocSelector<HomeCubit, HomeState, int>(
            selector: (state) => state.currentSpecialOffer,
            builder: (context, currentSpecialOffer) {
              return CustomDotIndicator(isActive: index == currentSpecialOffer);
            },
          ),
        ),
      ),
    );
  }
}
