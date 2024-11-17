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
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomeView());
    },
  );
}

/// generated route for
/// [InboxView]
class InboxRoute extends PageRouteInfo<void> {
  const InboxRoute({List<PageRouteInfo>? children})
      : super(
          InboxRoute.name,
          initialChildren: children,
        );

  static const String name = 'InboxRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InboxView();
    },
  );
}

/// generated route for
/// [LayoutView]
class LayoutRoute extends PageRouteInfo<void> {
  const LayoutRoute({List<PageRouteInfo>? children})
      : super(
          LayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'LayoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LayoutView();
    },
  );
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
/// [MyWishlistView]
class MyWishlistRoute extends PageRouteInfo<void> {
  const MyWishlistRoute({List<PageRouteInfo>? children})
      : super(
          MyWishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWishlistRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MyWishlistView();
    },
  );
}

/// generated route for
/// [OrdersView]
class OrdersRoute extends PageRouteInfo<void> {
  const OrdersRoute({List<PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrdersView();
    },
  );
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
/// [ProductDetailsView]
class ProductDetailsRoute extends PageRouteInfo<void> {
  const ProductDetailsRoute({List<PageRouteInfo>? children})
      : super(
          ProductDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductDetailsView();
    },
  );
}

/// generated route for
/// [ProductInfo]
class ProductInfoRoute extends PageRouteInfo<void> {
  const ProductInfoRoute({List<PageRouteInfo>? children})
      : super(
          ProductInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductInfo();
    },
  );
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileView();
    },
  );
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
/// [ResetPasswordView]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ResetPasswordView());
    },
  );
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
/// [SpecialOffersView]
class SpecialOffersRoute extends PageRouteInfo<void> {
  const SpecialOffersRoute({List<PageRouteInfo>? children})
      : super(
          SpecialOffersRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpecialOffersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpecialOffersView();
    },
  );
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
/// [TopDealsView]
class TopDealsRoute extends PageRouteInfo<void> {
  const TopDealsRoute({List<PageRouteInfo>? children})
      : super(
          TopDealsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopDealsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const TopDealsView());
    },
  );
}

/// generated route for
/// [WalletView]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalletView();
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
