import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/features/auth/presentation/widgets/set_fingerprint/set_fingerprint_view_body.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/set_fingerprint_cubit.dart';

@RoutePage()
class SetFingerprintView extends StatelessWidget implements AutoRouteWrapper {
  const SetFingerprintView({
    super.key,
    required this.updateProfileParams,
  });

  final UpdateProfileParams updateProfileParams;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SetFingerprintCubit>(
      create: (_) => getIt.get<SetFingerprintCubit>(),
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
              child: SetFingerprintViewBody(
                updateProfileParams: updateProfileParams,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
