// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      message: json['message'] as String,
      data: RegisterData.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data.toJson(),
      'statusCode': instance.statusCode,
    };

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) => RegisterData(
      newUser: CareyUser.fromJson(json['newUser'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'newUser': instance.newUser.toJson(),
      'token': instance.token,
    };
