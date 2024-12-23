import 'package:carey/src/core/api/end_points.dart';
import 'package:carey/src/features/wishlist/data/models/add_to_wishlist_params.dart';
import 'package:carey/src/features/wishlist/data/models/fetch_my_wishlist_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'wishlist_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class WishlistApiService {
  factory WishlistApiService(Dio dio, {String baseUrl}) = _WishlistApiService;

  @POST(EndPoints.wishlist)
  Future<void> addToWishlist(@Body() AddToWishlistParams params);

  @DELETE('${EndPoints.wishlist}/{carId}')
  Future<void> removeFromWishlist(
    @Path('carId') int carId,
  );

  @GET(EndPoints.myWishlist)
  Future<FetchMyWishlistResponse> fetchMyWishlist();
}
