// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_via_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthViaPasswordRequest _$AuthViaPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    AuthViaPasswordRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AuthViaPasswordRequestToJson(
        AuthViaPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
