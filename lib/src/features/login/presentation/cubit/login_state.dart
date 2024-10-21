import 'package:carey/src/features/login/domain/entities/login_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.togglePasswordVisibility(bool obscured) =
      TogglePasswordVisibility<T>;
  const factory LoginState.toggleRememberMe(bool rememberMe) =
      ToggleRememberMe<T>;
  const factory LoginState.loginViaEmailAndPasswordLoading() =
      LoginViaEmailAndPasswordLoading<T>;
  const factory LoginState.loginViaEmailAndPasswordSuccess(
    LoginResponseEntity loginEntity,
  ) = LoginViaEmailAndPasswordSuccess<T>;
  const factory LoginState.loginViaEmailAndPasswordError(String error) =
      LoginViaEmailAndPasswordError<T>;
}
