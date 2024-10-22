import 'package:dio/dio.dart';

import 'package:carey/src/features/auth/data/apis/register_api_service.dart';
import 'package:carey/src/features/auth/data/models/auth_via_password_request.dart';
import 'package:carey/src/features/auth/data/models/register_response.dart';

class RegisterRemoteDataSource {
  final RegisterApiService _registerApiService;

  RegisterRemoteDataSource(this._registerApiService);

  Future<RegisterResponse> registerViaPassword(
    AuthViaPasswordRequest params, [
    CancelToken? cancelToken,
  ]) async {
    return _registerApiService.register(params);
  }
}
