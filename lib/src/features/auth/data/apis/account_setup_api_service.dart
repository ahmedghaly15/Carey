import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/update_profile_img_params.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';

part 'account_setup_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class AccountSetupApiService {
  factory AccountSetupApiService(Dio dio, {String baseUrl}) =
      _AccountSetupApiService;

  @PATCH(EndPoints.updateProfile)
  Future<void> updateProfile(
    @Body() UpdateProfileParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @MultiPart()
  @POST(EndPoints.updateProfileImg)
  Future<void> updateProfileImg(
    @Body() UpdateProfileImgParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
