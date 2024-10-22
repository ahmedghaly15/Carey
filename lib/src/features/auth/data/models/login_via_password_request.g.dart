// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_via_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginViaPasswordRequest _$LoginViaPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    LoginViaPasswordRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginViaPasswordRequestToJson(
        LoginViaPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
