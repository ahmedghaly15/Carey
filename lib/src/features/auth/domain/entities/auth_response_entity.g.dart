// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponseEntity _$AuthResponseEntityFromJson(Map<String, dynamic> json) =>
    AuthResponseEntity(
      user: CareyUser.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthResponseEntityToJson(AuthResponseEntity instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
