import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/update_pass_params.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'reset_pass_api_service.g.dart';

@RestApi()
abstract class ResetPassApiService {
  factory ResetPassApiService(Dio dio, {String baseUrl}) = _ResetPassApiService;

  @POST(EndPoints.updatePassword)
  Future<void> updatePassword(
    @Body() UpdatePassParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
