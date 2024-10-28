import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pin_code_verification_state.freezed.dart';

@freezed
class PinCodeVerificationState<T> with _$PinCodeVerificationState<T> {
  const factory PinCodeVerificationState.initial() = _Initial;
  const factory PinCodeVerificationState.verifyLoading() = VerifyLoading;
  const factory PinCodeVerificationState.verifySuccess(
      AuthResponseEntity authResponseEntity) = VerifySuccess<T>;
  const factory PinCodeVerificationState.verifyError(String error) =
      VerifyError<T>;
}
