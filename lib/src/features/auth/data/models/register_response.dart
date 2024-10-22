import 'package:carey/src/core/models/carey_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable(explicitToJson: true)
class RegisterResponse {
  final String message;
  final RegisterData data;
  final int statusCode;

  RegisterResponse({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RegisterData {
  final CareyUser newUser;
  final String token;

  RegisterData({
    required this.newUser,
    required this.token,
  });

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterDataToJson(this);
}
