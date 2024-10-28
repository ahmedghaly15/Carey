import 'package:json_annotation/json_annotation.dart';

part 'update_pass_params.g.dart';

@JsonSerializable()
class UpdatePassParams {
  final String password;

  UpdatePassParams({required this.password});

  Map<String, dynamic> toJson() => _$UpdatePassParamsToJson(this);
}
