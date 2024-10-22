import 'package:json_annotation/json_annotation.dart';

part 'login_via_password_request.g.dart';

@JsonSerializable()
class LoginViaPasswordRequest {
  final String email, password;

  const LoginViaPasswordRequest({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoginViaPasswordRequestToJson(this);
}
