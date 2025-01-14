import 'package:carey/src/core/utils/app_strings.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndPoints {
  EndPoints._();

  static final String baseUrl =
      dotenv.env[AppStrings.baseUrlEnvKey] ?? 'https://fallback-url.com/';
  // static const String baseUrl = 'http://192.168.1.7:3000/';
  static const String auth = 'auth/';
  static const String login = '${auth}login';
  static const String register = '${auth}register';
  static const String users = 'users/';
  static const String updateProfile = '${users}update-my-profile';
  static const String googleSignIn = '${auth}google';
  static const String facebookSignIn = '${auth}facebook';
  static const String createBiometric = '${users}create-biometric';
  static const String getAccountByEmail = '${users}get-account';
  static const String sendMailPin = '${users}send-mail-pin';
  static const String sendSmsPin = '${users}send-sms-pin';
  static const String updatePassword = '${users}update-password';
  static const String updateProfileDetails = '${users}update-my-profile';
  static const String updateProfileImg = '${users}update-picture';
  static const String wishlist = 'wishlist/';
  static const String fetchHome = 'home';
  static const String fetchMyProfile = '${users}my-profile';
  static const String myWishlist = '${wishlist}my-wishlist';
  static const String offers = 'offers/';
  static const String myOffers = '${offers}my-offers';
  static const String rates = 'rates/';
}
