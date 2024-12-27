part of 'app_router.dart';

List<AutoRoute> get appRoutes => [
      AutoRoute(
        initial: true,
        page: SplashRoute.page,
      ),
      AutoRoute(
        page: StartWelcomeRoute.page,
        children: [
          _buildCustomRoute(
            initial: true,
            page: WelcomeRoute.page,
          ),
          _buildCustomRoute(page: StartRoute.page),
        ],
      ),
      AutoRoute(
        page: AuthRoute.page,
        children: [
          _buildCustomRoute(initial: true, page: LoginMethodsRoute.page),
          _buildCustomRoute(page: LoginRoute.page),
          _buildCustomRoute(page: RegisterRoute.page),
          _buildCustomRoute(page: AccountSetupRoute.page),
          _buildCustomRoute(page: SetBiometricRoute.page),
          _buildCustomRoute(page: ForgotPasswordRoute.page),
          _buildCustomRoute(page: PinCodeVerificationRoute.page),
          _buildCustomRoute(page: ResetPasswordRoute.page),
        ],
      ),
      AutoRoute(
        page: LayoutRoute.page,
        children: [
          AutoRoute(initial: true, page: HomeRoute.page),
          AutoRoute(page: OrdersRoute.page),
          AutoRoute(page: InboxRoute.page),
          AutoRoute(page: WalletRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ],
      ),
      _buildCustomRoute(page: BestOffersRoute.page),
      _buildCustomRoute(page: SpecialOffersRoute.page),
      _buildCustomRoute(page: TopDealsRoute.page),
      _buildCustomRoute(page: MyWishlistRoute.page),
      _buildCustomRoute(page: ProductDetailsRoute.page),
      _buildCustomRoute(page: ProductReviewsRoute.page),
      _buildCustomRoute(
        page: OfferRoute.page,
        children: [
          _buildCustomRoute(
            initial: true,
            page: MakeOfferRoute.page,
          ),
          _buildCustomRoute(page: OfferStatusRoute.page),
        ],
      ),
      _buildCustomRoute(
        page: CheckoutProcessRoute.page,
        children: [
          _buildCustomRoute(
            initial: true,
            page: CheckoutRoute.page,
          ),
        ],
      ),
    ];

CustomRoute _buildCustomRoute({
  bool initial = false,
  required PageInfo page,
  List<AutoRoute>? children,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionsBuilder,
  int? durationInMilliseconds,
}) =>
    CustomRoute(
      initial: initial,
      page: page,
      transitionsBuilder: transitionsBuilder ?? TransitionsBuilders.fadeIn,
      durationInMilliseconds: durationInMilliseconds ?? 500,
      children: children,
    );
