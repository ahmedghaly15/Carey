import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_params.freezed.dart';
part 'update_profile_params.g.dart';

@freezed
@JsonSerializable()
class UpdateProfileParams with _$UpdateProfileParams {
  const factory UpdateProfileParams({
    String? fullName,
    String? nickName,
    String? gender,
    String? address,
    String? phone,
    @Default(false) bool biometricVerified,
  }) = _UpdateProfileParams;

  factory UpdateProfileParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileParamsFromJson(json);
}
