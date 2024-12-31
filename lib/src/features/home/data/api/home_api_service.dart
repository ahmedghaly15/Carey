import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/home/data/models/fetch_home_response.dart';
import 'package:carey/src/features/home/data/models/fetch_special_offers_response.dart';

part 'home_api_service.g.dart';

@RestApi()
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(EndPoints.fetchHome)
  Future<FetchHomeResponse> fetchHome([
    @CancelRequest() CancelToken? cancelToken,
  ]);

  @GET(EndPoints.myOffers)
  Future<FetchSpecialOffersResponse> fetchSpecialOffers([
    @CancelRequest() CancelToken? cancelToken,
  ]);
}
