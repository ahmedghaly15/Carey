// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String,
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.toJson(),
      'statusCode': instance.statusCode,
    };

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      user: CareyUser.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'user': instance.user.toJson(),
      'token': instance.token,
    };

CareyUser _$CareyUserFromJson(Map<String, dynamic> json) => CareyUser(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      role: UserRole.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CareyUserToJson(CareyUser instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role.toJson(),
    };

UserRole _$UserRoleFromJson(Map<String, dynamic> json) => UserRole(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserRoleToJson(UserRole instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
