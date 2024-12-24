import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteReviewIconButton extends StatefulWidget {
  const FavoriteReviewIconButton({super.key});

  @override
  State<FavoriteReviewIconButton> createState() =>
      _FavoriteReviewIconButtonState();
}

class _FavoriteReviewIconButtonState extends State<FavoriteReviewIconButton> {
  bool isFavoriteLocal = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
        iconSize: 24.h,
      ),
      onPressed: () => setState(() => isFavoriteLocal = !isFavoriteLocal),
      icon: Icon(
        isFavoriteLocal ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}
