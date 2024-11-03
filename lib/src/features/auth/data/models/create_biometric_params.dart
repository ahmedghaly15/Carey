import 'package:json_annotation/json_annotation.dart';

part 'create_biometric_params.g.dart';

@JsonSerializable()
class CreateBiometricParams {
  final String password;

  CreateBiometricParams({required this.password});

  Map<String, dynamic> toJson() => _$CreateBiometricParamsToJson(this);
}
