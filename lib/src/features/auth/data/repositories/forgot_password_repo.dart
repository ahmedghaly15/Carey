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

  Future<ApiResult<List<ContactDetails>>> getForgotPassContactDetails(
    AuthRequestParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<List<ContactDetails>>(
      () async => await _getAccountAndReturnContactDetails(params, cancelToken),
    );
  }

  Future<List<ContactDetails>> _getAccountAndReturnContactDetails(
    AuthRequestParams params, [
    CancelToken? cancelToken,
  ]) async {
    final response = await _apiService.getAccountByEmail(params, cancelToken);
    currentUserData = AuthResponseEntity.toAuthEntity(user: response.data.user);
    final List<ContactDetails> contactDetails = [
      ContactDetails(
        name: AppStrings.sms,
        icon: Assets.svgsSmsIcon,
        contact: response.data.user.phone,
      ),
      ContactDetails(
        name: AppStrings.email,
        icon: Assets.svgsEmailIcon,
        contact: response.data.user.email,
      ),
    ];
    return contactDetails;
  }

  Future<ApiResult<void>> sendMailPin(
    SendPinParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.sendMailPin(params, cancelToken),
    );
  }

  Future<ApiResult<void>> sendSmsPin(
    SendPinParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.sendSmsPin(params, cancelToken),
    );
  }
}
