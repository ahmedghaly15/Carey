import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:carey/src/features/wishlist/data/repos/wishlist_repo.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/fetch_wishlist/fetch_wishlist_state.dart';

class FetchWishlistCubit extends Cubit<FetchWishlistState> {
  FetchWishlistCubit(this._wishlistRepo) : super(FetchWishlistState.initial());

  final WishlistRepo _wishlistRepo;

  Future<void> fetchMyWishlist() async {
    emit(state.copyWith(
      status: FetchWishlistStateStatus.fetchWishlistLoading,
    ));
    final result = await _wishlistRepo.fetchMyWishlist();
    result.when(
      success: (wishlist) => emit(state.copyWith(
        status: FetchWishlistStateStatus.fetchWishlistSuccess,
        wishlist: wishlist,
      )),
      failure: (error) => emit(state.copyWith(
        status: FetchWishlistStateStatus.fetchWishlistError,
        error: error.error[0],
      )),
    );
  }
}
