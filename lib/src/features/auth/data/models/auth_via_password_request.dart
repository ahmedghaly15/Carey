import 'package:json_annotation/json_annotation.dart';

part 'auth_via_password_request.g.dart';

@JsonSerializable()
class AuthViaPasswordRequest {
  final String email, password;

  const AuthViaPasswordRequest({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$AuthViaPasswordRequestToJson(this);
}
