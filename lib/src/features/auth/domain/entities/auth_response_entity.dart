import 'package:carey/src/core/models/carey_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_entity.g.dart';

@JsonSerializable()
class AuthResponseEntity {
  final CareyUser user;
  final String token;

  AuthResponseEntity({
    required this.user,
    required this.token,
  });

  factory AuthResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AuthResponseEntityToJson(this);
}
