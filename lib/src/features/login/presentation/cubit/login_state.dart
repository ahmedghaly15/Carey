import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.togglePasswordVisibility(bool obscured) =
      TogglePasswordVisibility<T>;
  const factory LoginState.toggleRememberMe(bool rememberMe) =
      ToggleRememberMe<T>;
}
