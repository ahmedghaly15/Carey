import 'package:json_annotation/json_annotation.dart';

part 'update_profile_params.g.dart';

@JsonSerializable()
class UpdateProfileParams {
  final String? fullName, nickName, gender, address, phone;

  UpdateProfileParams({
    this.fullName,
    this.nickName,
    this.gender,
    this.address,
    this.phone,
  });

  factory UpdateProfileParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileParamsFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateProfileParamsToJson(this);
}
