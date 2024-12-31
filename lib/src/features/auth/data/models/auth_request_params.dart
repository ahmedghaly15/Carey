import 'package:json_annotation/json_annotation.dart';

part 'auth_request_params.g.dart';

@JsonSerializable()
class AuthRequestParams {
  final String email;
  final String? password;

  const AuthRequestParams({
    required this.email,
    this.password,
  });

  Map<String, dynamic> toJson() => _$AuthRequestParamsToJson(this);
}
