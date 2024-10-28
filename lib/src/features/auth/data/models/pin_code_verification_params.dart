import 'package:json_annotation/json_annotation.dart';

part 'pin_code_verification_params.g.dart';

@JsonSerializable()
class PinCodeVerificationParams {
  final String pin;

  PinCodeVerificationParams({required this.pin});

  Map<String, dynamic> toJson() => _$PinCodeVerificationParamsToJson(this);
}
