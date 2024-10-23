import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = Initial;
  const factory RegisterState.registerLoading() = RegisterLoading;
  const factory RegisterState.registerSuccess() = RegisterSuccess<T>;
  const factory RegisterState.registerError(String error) = RegisterError<T>;
}
