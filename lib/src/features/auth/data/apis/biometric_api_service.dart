import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/auth/data/models/create_biometric_params.dart';

part 'biometric_api_service.g.dart';

@RestApi()
abstract class BiometricApiService {
  factory BiometricApiService(Dio dio, {String baseUrl}) = _BiometricApiService;

  @POST(EndPoints.createBiometric)
  Future<void> createBiometric(@Body() CreateBiometricParams params);
}
