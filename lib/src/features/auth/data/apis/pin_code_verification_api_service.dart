import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/login_response.dart';
import 'package:carey/src/features/auth/data/models/pin_code_verification_params.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'pin_code_verification_api_service.g.dart';

@RestApi()
abstract class PinCodeVerificationApiService {
  factory PinCodeVerificationApiService(Dio dio, {String baseUrl}) =
      _PinCodeVerificationApiService;

  @POST('${EndPoints.users}{userId}/account-recovery')
  Future<LoginResponse> verifyPin(
    @Path('userId') int userId,
    @Body() PinCodeVerificationParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
