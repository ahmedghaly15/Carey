import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/features/auth/presentation/cubits/pin_code_verification/pin_code_verification_cubit.dart';
import 'package:carey/src/features/auth/presentation/widgets/pin_code_verification/verify_button_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/themes/app_text_styles.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/my_sized_box.dart';
import 'package:carey/src/features/auth/presentation/widgets/pin_code_verification/pin_code_pin_put.dart';

@RoutePage()
class PinCodeVerificationView extends StatelessWidget
    implements AutoRouteWrapper {
  const PinCodeVerificationView({
    super.key,
    this.contactType = AppStrings.email,
  });

  final String contactType;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PinCodeVerificationCubit>(
      create: (_) => getIt.get<PinCodeVerificationCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const CustomSliverAppBar(titleText: AppStrings.verification),
          SliverPadding(
            padding: AppConstants.screenHorizontalPadding,
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    '${AppStrings.pinCodeHasBeenSent}. ${AppStrings.checkYour} $contactType',
                    style: AppTextStyles.font16Regular,
                  ),
                  MySizedBox.height53,
                  const PinCodePinPut(),
                  const Spacer(flex: 2),
                  const VerifyButtonBlocListener(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
