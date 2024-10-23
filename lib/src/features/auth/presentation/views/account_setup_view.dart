import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/auth/presentation/cubits/account_setup/account_setup_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/account_setup/account_image.dart';
import 'package:carey/src/features/auth/presentation/widgets/account_setup/account_setup_form.dart';
import 'package:carey/src/features/auth/presentation/widgets/account_setup/fill_profile_continue_bloc_listener.dart';

@RoutePage()
class AccountSetupView extends StatelessWidget implements AutoRouteWrapper {
  const AccountSetupView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<AccountSetupCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(
            hasLeading: false,
            titleText: AppStrings.fillYourProfile,
          ),
          SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 36.h),
              child: const AccountImage(),
            ),
          ),
          const SliverToBoxAdapter(child: AccountSetupForm()),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                FillProfileContinueBlocListener(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
