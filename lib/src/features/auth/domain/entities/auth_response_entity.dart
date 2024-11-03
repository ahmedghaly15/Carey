import 'package:carey/src/core/models/carey_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_entity.freezed.dart';
part 'auth_response_entity.g.dart';

@freezed
class AuthResponseEntity with _$AuthResponseEntity {
  @JsonSerializable(explicitToJson: true)
  const factory AuthResponseEntity({
    required CareyUser user,
    required String token,
  }) = _AuthResponseEntity;

  factory AuthResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseEntityFromJson(json);

  factory AuthResponseEntity.toAuthEntity({
    required CareyUser user,
    String? token,
  }) =>
      AuthResponseEntity(user: user, token: token ?? '');
}
