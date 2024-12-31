import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/auth_request_params.dart';
import 'package:carey/src/features/auth/data/models/login_response.dart';

part 'login_api_service.g.dart';

@RestApi()
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(EndPoints.login)
  Future<LoginResponse> loginViaPassword(
    @Body() AuthRequestParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
