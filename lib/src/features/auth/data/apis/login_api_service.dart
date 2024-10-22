import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/login_response.dart';
import 'package:carey/src/features/auth/data/models/login_via_password_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(EndPoints.login)
  Future<LoginResponse> loginViaPassword(
    @Body() LoginViaPasswordRequest params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}