import 'package:carey/src/core/helpers/extensions.dart';
import 'package:carey/src/features/wishlist/data/datasource/wishlist_local_datasource.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_cubit.dart';
import 'package:carey/src/features/wishlist/presentation/cubits/wishlist_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteIconButtonBlocListener extends StatefulWidget {
  const FavoriteIconButtonBlocListener({
    super.key,
    this.padding,
    required this.wishlistLength,
    required this.carId,
  });

  final EdgeInsetsGeometry? padding;
  final int carId, wishlistLength;

  @override
  State<FavoriteIconButtonBlocListener> createState() =>
      _FavoriteIconButtonBlocListenerState();
}

class _FavoriteIconButtonBlocListenerState
    extends State<FavoriteIconButtonBlocListener> {
  late bool _isFavoriteLocal;

  @override
  void initState() {
    super.initState();
    _isFavoriteLocal = widget.wishlistLength > 0;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WishlistCubit, WishlistState>(
      listenWhen: (_, current) =>
          _listenWhen(current.status, current.favAffectedItemId!),
      listener: (context, state) => _listener(state),
      child: IconButton(
        style: IconButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: widget.padding,
          minimumSize: Size(16.w, 16.h),
        ),
        onPressed: () => _favoriteItemOrNot(context),
        icon: Icon(
          _isFavoriteLocal ? Icons.favorite : Icons.favorite_border,
          size: 16.h,
        ),
      ),
    );
  }

  void _favoriteItemOrNot(BuildContext context) async {
    _isFavoriteLocal
        ? context.read<WishlistCubit>().removeFromWishlist(widget.carId)
        : context.read<WishlistCubit>().addToWishlist(widget.carId);
    _toggleIsFavoriteLocal();
  }

  void _toggleIsFavoriteLocal() {
    setState(() {
      _isFavoriteLocal = !_isFavoriteLocal;
    });
  }

  void _listener(WishlistState state) async {
    switch (state.status) {
      case WishlistStateStatus.addToWishlistSuccess:
      case WishlistStateStatus.removeFromWishlistSuccess:
        await WishlistLocalDatasource.deleteCachedWishlist();
        break;
      case WishlistStateStatus.removeFromWishlistError:
      case WishlistStateStatus.addToWishlistError:
        context.showToast(state.error!);
        Future.delayed(
          const Duration(seconds: 1),
          () => _toggleIsFavoriteLocal(),
        );
        break;
      default:
        break;
    }
  }

  bool _listenWhen(WishlistStateStatus status, int favAffectedItemId) {
    return favAffectedItemId == widget.carId &&
        (status == WishlistStateStatus.addToWishlistSuccess ||
            status == WishlistStateStatus.removeFromWishlistSuccess ||
            status == WishlistStateStatus.addToWishlistError ||
            status == WishlistStateStatus.removeFromWishlistError);
  }
}
