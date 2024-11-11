// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_img_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileImgParams _$UpdateProfileImgParamsFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileImgParams(
      const FileJsonConverter().fromJson(json['picture'] as String),
    );

Map<String, dynamic> _$UpdateProfileImgParamsToJson(
        UpdateProfileImgParams instance) =>
    <String, dynamic>{
      'picture': const FileJsonConverter().toJson(instance.picture),
    };
