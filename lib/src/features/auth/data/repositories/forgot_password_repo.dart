import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/forgot_password_api_service.dart';
import 'package:carey/src/features/auth/data/models/get_account_by_email_params.dart';
import 'package:carey/src/features/auth/domain/entities/get_account_by_email_entity.dart';
import 'package:dio/dio.dart';

class ForgotPasswordRepo {
  final ForgotPasswordApiService _apiService;

  ForgotPasswordRepo(this._apiService);

  Future<ApiResult<GetAccountByEmailEntity>> getAccountByEmail(
    GetAccountByEmailParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<GetAccountByEmailEntity>(
      () async => await _getAccountAndMapToEntity(params, cancelToken),
    );
  }

  Future<GetAccountByEmailEntity> _getAccountAndMapToEntity(
    GetAccountByEmailParams params, [
    CancelToken? cancelToken,
  ]) async {
    final response = await _apiService.getAccountByEmail(params, cancelToken);
    final getAccountByEmailEntity =
        GetAccountByEmailEntity.toGetAccountByEmailEntity(response);
    return getAccountByEmailEntity;
  }
}
