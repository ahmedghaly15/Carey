import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:carey/src/core/helpers/hive_type_ids.dart';

part 'carey_user.freezed.dart';
part 'carey_user.g.dart';

@HiveType(typeId: HiveTypeIds.careyUser)
@freezed
class CareyUser with _$CareyUser {
  @JsonSerializable(explicitToJson: true)
  const factory CareyUser({
    @HiveField(0) required int id,
    @HiveField(1) String? email,
    @HiveField(2) UserRole? role,
    @HiveField(3) String? password,
    @HiveField(4) String? fullName,
    @HiveField(5) String? nickName,
    @HiveField(6) String? phone,
    @HiveField(7) String? address,
    @HiveField(8) String? pinCode,
    @HiveField(9) String? picture,
    @HiveField(10) String? gender,
    @HiveField(11) String? createdAt,
    @HiveField(12) String? updatedAt,
    @HiveField(13) @JsonKey(name: 'LoginAppId') String? loginAppId,
    @HiveField(14) bool? emailVerified,
    @HiveField(15) bool? phoneVerified,
    @HiveField(16) bool? biometricVerified,
  }) = _CareyUser;

  factory CareyUser.fromJson(Map<String, dynamic> json) =>
      _$CareyUserFromJson(json);
}

@HiveType(typeId: HiveTypeIds.userRole)
@JsonSerializable()
class UserRole {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;

  const UserRole({
    required this.id,
    required this.name,
  });

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);
  Map<String, dynamic> toJson() => _$UserRoleToJson(this);
}
