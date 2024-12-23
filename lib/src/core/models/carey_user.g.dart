// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carey_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRole _$UserRoleFromJson(Map<String, dynamic> json) => UserRole(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserRoleToJson(UserRole instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CareyUserImpl _$$CareyUserImplFromJson(Map<String, dynamic> json) =>
    _$CareyUserImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String?,
      role: json['role'] == null
          ? null
          : UserRole.fromJson(json['role'] as Map<String, dynamic>),
      password: json['password'] as String?,
      fullName: json['fullName'] as String?,
      nickName: json['nickName'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      pinCode: json['pinCode'] as String?,
      picture: json['picture'] as String?,
      gender: json['gender'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      loginAppId: json['LoginAppId'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      phoneVerified: json['phoneVerified'] as bool?,
    );

Map<String, dynamic> _$$CareyUserImplToJson(_$CareyUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role?.toJson(),
      'password': instance.password,
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'phone': instance.phone,
      'address': instance.address,
      'pinCode': instance.pinCode,
      'picture': instance.picture,
      'gender': instance.gender,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'LoginAppId': instance.loginAppId,
      'emailVerified': instance.emailVerified,
      'phoneVerified': instance.phoneVerified,
    };
