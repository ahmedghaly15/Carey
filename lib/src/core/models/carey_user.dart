import 'package:freezed_annotation/freezed_annotation.dart';

part 'carey_user.freezed.dart';
part 'carey_user.g.dart';

@freezed
class CareyUser with _$CareyUser {
  @JsonSerializable(explicitToJson: true)
  const factory CareyUser({
    required int id,
    String? email,
    UserRole? role,
    String? password,
    String? fullName,
    String? nickName,
    String? phone,
    String? address,
    String? pinCode,
    String? picture,
    String? gender,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: 'LoginAppId') String? loginAppId,
    bool? emailVerified,
    bool? phoneVerified,
  }) = _CareyUser;

  factory CareyUser.fromJson(Map<String, dynamic> json) =>
      _$CareyUserFromJson(json);
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
