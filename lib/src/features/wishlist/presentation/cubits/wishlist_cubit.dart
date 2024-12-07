import 'package:carey/src/features/wishlist/data/repos/wishlist_repo.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistCubit extends Cubit<WishlistState> {
  final WishlistRepo _wishlistRepo;

  WishlistCubit(this._wishlistRepo) : super(WishlistState.initial());

  void addToWishlist(int carId) async {
    emit(state.copyWith(
      status: WishlistStateStatus.addToWishlistLoading,
    ));
    final result = await _wishlistRepo.addToWishlist(carId);
    result.when(
      success: (_) => emit(state.copyWith(
        status: WishlistStateStatus.addToWishlistSuccess,
      )),
      failure: (error) => emit(state.copyWith(
        status: WishlistStateStatus.addToWishlistError,
        error: error.error[0],
      )),
    );
  }

  void removeFromWishlist(int wishlistId) async {
    emit(state.copyWith(
      status: WishlistStateStatus.removeFromWishlistLoading,
    ));
    final result = await _wishlistRepo.removeFromWishlist(wishlistId);
    result.when(
      success: (_) => emit(state.copyWith(
        status: WishlistStateStatus.removeFromWishlistSuccess,
      )),
      failure: (error) => emit(state.copyWith(
        status: WishlistStateStatus.removeFromWishlistError,
        error: error.error[0],
      )),
    );
  }

  Future<void> fetchMyWishlist() async {
    emit(state.copyWith(
      status: WishlistStateStatus.fetchWishlistLoading,
    ));
    final result = await _wishlistRepo.fetchMyWishlist();
    result.when(
      success: (wishlist) => emit(state.copyWith(
        status: WishlistStateStatus.fetchWishlistSuccess,
        wishlist: wishlist,
      )),
      failure: (error) => emit(state.copyWith(
        status: WishlistStateStatus.fetchWishlistError,
        error: error.error[0],
      )),
    );
  }
}
