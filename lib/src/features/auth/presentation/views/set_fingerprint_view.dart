import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/cubits/set_fingerprint/set_fingerprint_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return const Placeholder();
  }
}
