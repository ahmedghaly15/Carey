// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AccountSetupView]
class AccountSetupRoute extends PageRouteInfo<void> {
  const AccountSetupRoute({List<PageRouteInfo>? children})
      : super(
          AccountSetupRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountSetupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AccountSetupView());
    },
  );
}

/// generated route for
/// [Auth]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const Auth();
    },
  );
}

/// generated route for
/// [ForgotPasswordView]
class ForgotPasswordRoute extends PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>();
      return WrappedRoute(
          child: ForgotPasswordView(
        key: args.key,
        email: args.email,
      ));
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [LoginMethodsView]
class LoginMethodsRoute extends PageRouteInfo<void> {
  const LoginMethodsRoute({List<PageRouteInfo>? children})
      : super(
          LoginMethodsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginMethodsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginMethodsView();
    },
  );
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    bool isPushedFromRegister = false,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            isPushedFromRegister: isPushedFromRegister,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return WrappedRoute(
          child: LoginView(
        key: args.key,
        isPushedFromRegister: args.isPushedFromRegister,
      ));
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.isPushedFromRegister = false,
  });

  final Key? key;

  final bool isPushedFromRegister;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isPushedFromRegister: $isPushedFromRegister}';
  }
}

/// generated route for
/// [PinCodeVerificationView]
class PinCodeVerificationRoute
    extends PageRouteInfo<PinCodeVerificationRouteArgs> {
  PinCodeVerificationRoute({
    Key? key,
    required String contact,
    List<PageRouteInfo>? children,
  }) : super(
          PinCodeVerificationRoute.name,
          args: PinCodeVerificationRouteArgs(
            key: key,
            contact: contact,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeVerificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PinCodeVerificationRouteArgs>();
      return WrappedRoute(
          child: PinCodeVerificationView(
        key: args.key,
        contact: args.contact,
      ));
    },
  );
}

class PinCodeVerificationRouteArgs {
  const PinCodeVerificationRouteArgs({
    this.key,
    required this.contact,
  });

  final Key? key;

  final String contact;

  @override
  String toString() {
    return 'PinCodeVerificationRouteArgs{key: $key, contact: $contact}';
  }
}

/// generated route for
/// [RegisterView]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    bool isPushedFromLogin = true,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            key: key,
            isPushedFromLogin: isPushedFromLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return WrappedRoute(
          child: RegisterView(
        key: args.key,
        isPushedFromLogin: args.isPushedFromLogin,
      ));
    },
  );
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.key,
    this.isPushedFromLogin = true,
  });

  final Key? key;

  final bool isPushedFromLogin;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, isPushedFromLogin: $isPushedFromLogin}';
  }
}

/// generated route for
/// [SetFingerprintView]
class SetFingerprintRoute extends PageRouteInfo<SetFingerprintRouteArgs> {
  SetFingerprintRoute({
    Key? key,
    required UpdateProfileParams updateProfileParams,
    List<PageRouteInfo>? children,
  }) : super(
          SetFingerprintRoute.name,
          args: SetFingerprintRouteArgs(
            key: key,
            updateProfileParams: updateProfileParams,
          ),
          initialChildren: children,
        );

  static const String name = 'SetFingerprintRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetFingerprintRouteArgs>();
      return WrappedRoute(
          child: SetFingerprintView(
        key: args.key,
        updateProfileParams: args.updateProfileParams,
      ));
    },
  );
}

class SetFingerprintRouteArgs {
  const SetFingerprintRouteArgs({
    this.key,
    required this.updateProfileParams,
  });

  final Key? key;

  final UpdateProfileParams updateProfileParams;

  @override
  String toString() {
    return 'SetFingerprintRouteArgs{key: $key, updateProfileParams: $updateProfileParams}';
  }
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashView();
    },
  );
}

/// generated route for
/// [StartView]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute({List<PageRouteInfo>? children})
      : super(
          StartRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartView();
    },
  );
}

/// generated route for
/// [StartWelcome]
class StartWelcomeRoute extends PageRouteInfo<void> {
  const StartWelcomeRoute({List<PageRouteInfo>? children})
      : super(
          StartWelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartWelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartWelcome();
    },
  );
}

/// generated route for
/// [WelcomeView]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WelcomeView();
    },
  );
}
