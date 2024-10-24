class EndPoints {
  EndPoints._();

  // static const String baseUrl = 'https://carey-production.up.railway.app/';
  static const String baseUrl = 'http://192.168.1.7:3000/';
  static const String auth = '${baseUrl}auth/';
  static const String login = '${auth}login';
  static const String register = '${auth}register';
  static const String users = '${baseUrl}users/';
  static const String updateProfile = '${users}update-my-profile';
  static const String googleSignIn = '${auth}google';
  static const String facebookSignIn = '${auth}facebook';
}
