import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist_state.freezed.dart';

enum WishlistStateStatus {
  initial,
  addToWishlistLoading,
  addToWishlistSuccess,
  addToWishlistError,
  removeFromWishlistLoading,
  removeFromWishlistSuccess,
  removeFromWishlistError,
}

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
    required WishlistStateStatus status,
    String? error,
    int? favAffectedItemId,
  }) = _WishlistState;

  factory WishlistState.initial() => const WishlistState(
        status: WishlistStateStatus.initial,
      );
}
