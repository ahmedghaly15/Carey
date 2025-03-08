import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:carey/src/features/wishlist/data/models/fetch_my_wishlist_response.dart';

part 'fetch_wishlist_state.freezed.dart';

enum FetchWishlistStateStatus {
  initial,
  fetchWishlistLoading,
  fetchWishlistSuccess,
  fetchWishlistError,
}

@freezed
class FetchWishlistState with _$FetchWishlistState {
  const factory FetchWishlistState({
    required FetchWishlistStateStatus status,
    FetchMyWishlistResponse? wishlist,
    String? error,
  }) = _FetchWishlistState;

  factory FetchWishlistState.initial() => const FetchWishlistState(
        status: FetchWishlistStateStatus.initial,
      );
}
