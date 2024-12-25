import 'package:dio/dio.dart';

import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/app_assets.dart';
import 'package:carey/src/core/utils/app_constants.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/forgot_password_api_service.dart';
import 'package:carey/src/features/auth/data/models/auth_request_params.dart';
import 'package:carey/src/features/auth/data/models/contact_details.dart';
import 'package:carey/src/features/auth/data/models/send_pin_params.dart';
import 'package:carey/src/features/auth/domain/entities/auth_response_entity.dart';

class ForgotPasswordRepo {
  final ForgotPasswordApiService _apiService;

  ForgotPasswordRepo(this._apiService);

  Future<ApiResult<List<ContactDetails>>> getUserContactDetails(
    AuthRequestParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<List<ContactDetails>>(
      () async {
        final response =
            await _apiService.getAccountByEmail(params, cancelToken);
        currentUserData =
            AuthResponseEntity.toAuthEntity(user: response.data.user);
        return <ContactDetails>[
          ContactDetails(
            name: AppStrings.sms,
            icon: Assets.svgsSmsIcon,
            contact: response.data.user.phone,
            pinSendMethod: PinSendMethod.sms,
          ),
          ContactDetails(
            name: AppStrings.email,
            icon: Assets.svgsEmailIcon,
            contact: response.data.user.email,
            pinSendMethod: PinSendMethod.email,
          ),
        ];
      },
    );
  }

  Future<ApiResult<void>> sendPin({
    required PinSendMethod pinSendMethod,
    CancelToken? cancelToken,
  }) {
    final params = SendPinParams(userId: currentUserData!.user.id);
    return executeAndHandleErrors<void>(
      () async => pinSendMethod == PinSendMethod.sms
          ? await _apiService.sendSmsPin(params, cancelToken)
          : await _apiService.sendMailPin(params, cancelToken),
    );
  }
}
