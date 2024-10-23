// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileParams _$UpdateProfileParamsFromJson(Map<String, dynamic> json) =>
    UpdateProfileParams(
      fullName: json['fullName'] as String?,
      nickName: json['nickName'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UpdateProfileParamsToJson(
        UpdateProfileParams instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'gender': instance.gender,
      'address': instance.address,
      'phone': instance.phone,
    };
