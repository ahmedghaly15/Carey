import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/login_response.dart';
import 'package:carey/src/features/auth/data/models/update_profile_params.dart';

part 'account_setup_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class AccountSetupApiService {
  factory AccountSetupApiService(Dio dio, {String baseUrl}) =
      _AccountSetupApiService;

  @PATCH(EndPoints.updateProfileDetails)
  Future<void> updateProfileDetails(
    @Body() UpdateProfileParams params, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @MultiPart()
  @POST(EndPoints.updateProfileImg)
  Future<void> updateProfileImg(
    @Part() File picture, [
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.fetchMyProfile)
  Future<LoginResponse> fetchMyProfile([
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
