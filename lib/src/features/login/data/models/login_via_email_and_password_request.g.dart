// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_via_email_and_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginViaEmailAndPasswordRequest _$LoginViaEmailAndPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    LoginViaEmailAndPasswordRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginViaEmailAndPasswordRequestToJson(
        LoginViaEmailAndPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
