import 'package:carey/src/core/models/carey_user.dart';

class AuthResponseEntity {
  final CareyUser user;
  final String token;

  AuthResponseEntity({
    required this.user,
    required this.token,
  });
}
