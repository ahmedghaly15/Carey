class EndPoints {
  EndPoints._();

  static const String baseUrl = 'https://carey-production.up.railway.app/';
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
  static const String fetchHome = 'home';
}
