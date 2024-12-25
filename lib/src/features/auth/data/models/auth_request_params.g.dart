// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRequestParams _$AuthRequestParamsFromJson(Map<String, dynamic> json) =>
    AuthRequestParams(
      email: json['email'] as String,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$AuthRequestParamsToJson(AuthRequestParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
