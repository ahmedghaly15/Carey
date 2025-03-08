import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/auth_request_params.dart';
import 'package:carey/src/features/auth/data/models/register_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'register_api_service.g.dart';

@RestApi()
abstract class RegisterApiService {
  factory RegisterApiService(Dio dio, {String baseUrl}) = _RegisterApiService;

  @POST(EndPoints.register)
  Future<RegisterResponse> register(
    @Body() AuthRequestParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
