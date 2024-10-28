import 'package:carey/src/core/api/api_result.dart';
import 'package:carey/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:carey/src/features/auth/data/apis/reset_pass_api_service.dart';
import 'package:carey/src/features/auth/data/models/update_pass_params.dart';
import 'package:dio/dio.dart';

class ResetPassRepo {
  final ResetPassApiService _apiService;

  ResetPassRepo(this._apiService);

  Future<ApiResult<void>> updatePassword(
    UpdatePassParams params, [
    CancelToken? cancelToken,
  ]) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.updatePassword(params, cancelToken),
    );
  }
}
