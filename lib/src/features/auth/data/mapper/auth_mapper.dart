import 'package:carey/src/core/models/carey_user.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

class AuthMapper {
  AuthMapper._();

  static AuthResponseEntity toAuthEntity({
    required CareyUser user,
    required String token,
  }) =>
      AuthResponseEntity(user: user, token: token);
}
