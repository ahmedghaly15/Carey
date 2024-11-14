import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/widgets/home_custom_search_field.dart';
import 'package:carey/src/features/home/presentation/widgets/home_sliver_app_bar.dart';
import 'package:carey/src/features/home/presentation/widgets/text_and_see_all.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => getIt.get<HomeCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.screenHorizontalPaddingVal.w,
          ),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsetsDirectional.only(top: 24.h),
                sliver: const HomeSliverAppBar(),
              ),
              SliverPadding(
                padding: EdgeInsetsDirectional.only(top: 24.h, bottom: 10.h),
                sliver: const SliverToBoxAdapter(
                  child: HomeCustomSearchField(),
                ),
              ),
              SliverToBoxAdapter(
                child: TextAndSeeAll(
                  text: AppStrings.specialOffers,
                  seeAllOnPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
