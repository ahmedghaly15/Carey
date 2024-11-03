// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileParamsImpl _$$UpdateProfileParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileParamsImpl(
      fullName: json['fullName'] as String?,
      nickName: json['nickName'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      biometricVerified: json['biometricVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$$UpdateProfileParamsImplToJson(
        _$UpdateProfileParamsImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'gender': instance.gender,
      'address': instance.address,
      'phone': instance.phone,
      'biometricVerified': instance.biometricVerified,
    };
