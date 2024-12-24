// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseEntityImpl _$$AuthResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthResponseEntityImpl(
      user: CareyUser.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthResponseEntityImplToJson(
        _$AuthResponseEntityImpl instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'token': instance.token,
    };
