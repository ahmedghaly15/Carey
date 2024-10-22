import 'package:freezed_annotation/freezed_annotation.dart';

part 'carey_user.g.dart';

@JsonSerializable()
class CareyUser {
  final int id;
  final String email;
  final UserRole? role;
  final String? password,
      fullName,
      nickName,
      phone,
      address,
      pinCode,
      picture,
      gender,
      createdAt,
      updatedAt;
  @JsonKey(name: 'LoginAppId')
  final String? loginAppId;
  final bool? emailVerified, phoneVerified;

  const CareyUser({
    required this.id,
    required this.email,
    required this.role,
    this.password,
    this.fullName,
    this.nickName,
    this.phone,
    this.address,
    this.pinCode,
    this.picture,
    this.gender,
    this.createdAt,
    this.updatedAt,
    this.loginAppId,
    this.emailVerified,
    this.phoneVerified,
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
