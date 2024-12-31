import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/auth_request_params.dart';
import 'package:carey/src/features/auth/data/models/login_response.dart';
import 'package:carey/src/features/auth/data/models/send_pin_params.dart';

part 'forgot_password_api_service.g.dart';

@RestApi()
abstract class ForgotPasswordApiService {
  factory ForgotPasswordApiService(Dio dio, {String baseUrl}) =
      _ForgotPasswordApiService;

  @GET(EndPoints.getAccountByEmail)
  Future<LoginResponse> getAccountByEmail(
    @Body() AuthRequestParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.sendMailPin)
  Future<void> sendMailPin(
    @Body() SendPinParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @POST(EndPoints.sendSmsPin)
  Future<void> sendSmsPin(
    @Body() SendPinParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
