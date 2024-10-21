import 'package:json_annotation/json_annotation.dart';

part 'login_via_email_and_password_request.g.dart';

@JsonSerializable()
class LoginViaEmailAndPasswordRequest {
  final String email, password;

  const LoginViaEmailAndPasswordRequest({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() =>
      _$LoginViaEmailAndPasswordRequestToJson(this);
}
