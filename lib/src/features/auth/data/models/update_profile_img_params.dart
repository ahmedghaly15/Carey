import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'update_profile_img_params.g.dart';

@JsonSerializable()
class UpdateProfileImgParams {
  @FileJsonConverter()
  final File picture;

  UpdateProfileImgParams(this.picture);

  Map<String, dynamic> toJson() => _$UpdateProfileImgParamsToJson(this);
}

class FileJsonConverter extends JsonConverter<File, String> {
  const FileJsonConverter();

  @override
  File fromJson(String json) => File(json);

  @override
  String toJson(File object) => object.path;
}
