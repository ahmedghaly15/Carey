import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/wishlist/data/models/fetch_my_wishlist_response.dart';

part 'wishlist_state.freezed.dart';

enum WishlistStateStatus {
  initial,
  addToWishlistLoading,
  addToWishlistSuccess,
  addToWishlistError,
  removeFromWishlistLoading,
  removeFromWishlistSuccess,
  removeFromWishlistError,
  fetchWishlistLoading,
  fetchWishlistSuccess,
  fetchWishlistError,
}

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
    required WishlistStateStatus status,
    String? error,
    FetchMyWishlistResponse? wishlist,
  }) = _WishlistState;

  factory WishlistState.initial() => const WishlistState(
        status: WishlistStateStatus.initial,
      );
}
