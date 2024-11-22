import 'package:auto_route/auto_route.dart';
import 'package:carey/src/features/checkout/presentation/views/checkout_view.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/features/auth/data/models/update_profile_params.dart';
import 'package:carey/src/features/auth/presentation/views/account_setup_view.dart';
import 'package:carey/src/features/auth/presentation/views/forgot_password_view.dart';
import 'package:carey/src/features/auth/presentation/views/login_methods_view.dart';
import 'package:carey/src/features/auth/presentation/views/login_view.dart';
import 'package:carey/src/features/auth/presentation/views/pin_code_verification_view.dart';
import 'package:carey/src/features/auth/presentation/views/register_view.dart';
import 'package:carey/src/features/auth/presentation/views/reset_password_view.dart';
import 'package:carey/src/features/auth/presentation/views/set_fingerprint_view.dart';
import 'package:carey/src/features/home/presentation/views/home_view.dart';
import 'package:carey/src/features/home/presentation/views/special_offers_view.dart';
import 'package:carey/src/features/home/presentation/views/top_deals_view.dart';
import 'package:carey/src/features/inbox/inbox_view.dart';
import 'package:carey/src/features/layout/presentation/views/layout_view.dart';
import 'package:carey/src/features/make_offer/presentation/views/make_offer_view.dart';
import 'package:carey/src/features/orders/orders_view.dart';
import 'package:carey/src/features/make_offer/presentation/views/offer_status_view.dart';
import 'package:carey/src/features/product_details/presentation/views/product_details_view.dart';
import 'package:carey/src/features/product_reviews/presentation/views/product_reviews_view.dart';
import 'package:carey/src/features/profile/profile_view.dart';
import 'package:carey/src/features/splash/presentation/views/splash_view.dart';
import 'package:carey/src/features/start/presentation/views/start_view.dart';
import 'package:carey/src/features/start/presentation/views/welcome_view.dart';
import 'package:carey/src/features/wallet/wallet_view.dart';
import 'package:carey/src/features/wishlist/presentation/views/my_wishlist_view.dart';

part 'app_router.gr.dart';
part 'app_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => appRoutes;
}

@RoutePage(name: 'StartWelcomeRoute')
class StartWelcome extends AutoRouter {
  const StartWelcome({super.key});
}

@RoutePage(name: 'AuthRoute')
class Auth extends AutoRouter {
  const Auth({super.key});
}

@RoutePage(name: 'ProductInfoRoute')
class ProductInfo extends AutoRouter {
  const ProductInfo({super.key});
}

@RoutePage(name: 'OfferRoute')
class Offer extends AutoRouter {
  const Offer({super.key});
}

@RoutePage(name: 'CheckoutProcessRoute')
class CheckoutProcess extends AutoRouter {
  const CheckoutProcess({super.key});
}
