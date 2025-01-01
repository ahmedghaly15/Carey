import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/core/widgets/custom_error_widget.dart';
import 'package:carey/src/features/home/data/datasource/home_local_datasource.dart';
import 'package:carey/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:carey/src/features/home/presentation/cubit/home_state.dart';
import 'package:carey/src/features/home/presentation/widgets/home_body.dart';
import 'package:carey/src/features/home/presentation/widgets/home_shimmer_loading.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => getIt.get<HomeCubit>()
        ..fetchSpecialOffers()
        ..fetchHome(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        color: AppColors.primaryColor,
        onRefresh: () async => await _deleteCacheAndRefetchData(context),
        child: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (_, current) => _buildWhen(current.status),
          builder: (_, state) {
            switch (state.status) {
              case HomeStateStatus.fetchHomeDataLoading:
                return const HomeShimmerLoading();
              case HomeStateStatus.fetchHomeDataSuccess:
                return (state.homeData != null && state.specialOffers != null)
                    ? HomeBody(
                        data: state.homeData!,
                        specialOffers: state.specialOffers!,
                      )
                    : const HomeShimmerLoading();
              case HomeStateStatus.fetchHomeDataFailure:
              case HomeStateStatus.fetchSpecialOffersError:
                return (state.homeData != null && state.specialOffers != null)
                    ? HomeBody(
                        data: state.homeData!,
                        specialOffers: state.specialOffers!,
                      )
                    : CustomErrorWidget(
                        error: state.error!,
                        tryAgainOnPressed: () async =>
                            await _refetchHomeData(context),
                      );
              default:
                return const HomeShimmerLoading();
            }
          },
        ),
      ),
    );
  }

  Future<void> _deleteCacheAndRefetchData(BuildContext context) async {
    await HomeLocalDataSource.deleteCachedHomeData();
    await _refetchHomeData(context);
  }

  Future<void> _refetchHomeData(BuildContext context) async {
    await context.read<HomeCubit>().fetchHome();
    await context.read<HomeCubit>().fetchSpecialOffers();
  }

  bool _buildWhen(HomeStateStatus currentStatus) {
    return currentStatus == HomeStateStatus.fetchHomeDataLoading ||
        currentStatus == HomeStateStatus.fetchHomeDataSuccess ||
        currentStatus == HomeStateStatus.fetchHomeDataFailure ||
        currentStatus == HomeStateStatus.fetchSpecialOffersError;
  }
}
