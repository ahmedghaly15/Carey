import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginResponse {
  final String message;
  final LoginData data;
  final int statusCode;

  const LoginResponse({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginData {
  final CareyUser user;
  final String token;

  const LoginData({
    required this.user,
    required this.token,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CareyUser {
  final int id;
  final String email;
  final UserRole role;

  const CareyUser({
    required this.id,
    required this.email,
    required this.role,
  });

  factory CareyUser.fromJson(Map<String, dynamic> json) =>
      _$CareyUserFromJson(json);
  Map<String, dynamic> toJson() => _$CareyUserToJson(this);
}

@JsonSerializable()
class UserRole {
  final int id;
  final String name;

  const UserRole({
    required this.id,
    required this.name,
  });

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);
  Map<String, dynamic> toJson() => _$UserRoleToJson(this);
}
