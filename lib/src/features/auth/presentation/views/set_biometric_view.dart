import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/biometric_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/biometric_continue_bloc_listener.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/biometric_skip_bloc_listener.dart';

@RoutePage()
class SetBiometricView extends StatelessWidget implements AutoRouteWrapper {
  const SetBiometricView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BiometricCubit>(
      create: (_) => getIt.get<BiometricCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const CustomSliverAppBar(titleText: AppStrings.setYourFingerprint),
          SliverPadding(
            padding: AppConstants.screenHorizontalPadding,
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    AppStrings.addFingerprint,
                    style: AppTextStyles.font16Regular,
                    textAlign: TextAlign.center,
                  ),
                  SvgPicture.asset(
                    Assets.svgsFingerprint,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    AppStrings.pleasePutYourFingerprint,
                    style: AppTextStyles.font16Regular,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    spacing: 16.w,
                    children: const [
                      Expanded(
                        child: BiometricSkipBlocListener(),
                      ),
                      Expanded(
                        child: BiometricContinueBlocListener(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
