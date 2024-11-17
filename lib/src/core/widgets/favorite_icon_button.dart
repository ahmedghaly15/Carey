import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteIconButton extends StatefulWidget {
  const FavoriteIconButton({super.key, this.padding});

  final EdgeInsetsGeometry? padding;

  @override
  State<FavoriteIconButton> createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: widget.padding,
        minimumSize: Size(16.w, 16.h),
      ),
      onPressed: () {
        setState(() => isFavorite = !isFavorite);
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        size: 16.h,
      ),
    );
  }
}
