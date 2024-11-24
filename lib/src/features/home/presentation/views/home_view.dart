import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/cubit/home_state.dart';
import 'package:carey/src/features/home/presentation/widgets/home_body.dart';
import 'package:carey/src/features/home/presentation/widgets/home_shimmer_loading.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>.value(
      value: getIt.get<HomeCubit>()..fetchHome(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        color: AppColors.primaryColor,
        onRefresh: () async => await context.read<HomeCubit>().fetchHome(),
        child: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (_, current) => _buildWhen(current.status),
          builder: (_, state) {
            switch (state.status) {
              case HomeStateStatus.fetchHomeDataLoading:
                return const HomeShimmerLoading();
              case HomeStateStatus.fetchHomeDataSuccess ||
                    HomeStateStatus.fetchHomeDataFailure:
                return HomeBody(data: state.homeData!);
              default:
                return const HomeShimmerLoading();
            }
          },
        ),
      ),
    );
  }

  bool _buildWhen(HomeStateStatus currentStatus) {
    return currentStatus == HomeStateStatus.fetchHomeDataLoading ||
        currentStatus == HomeStateStatus.fetchHomeDataSuccess ||
        currentStatus == HomeStateStatus.fetchHomeDataFailure;
  }
}
