import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:carey/src/core/themes/app_colors.dart';
import 'package:carey/src/features/home/presentation/widgets/special_offer_item.dart';

class SpecialOffersPageView extends StatefulWidget {
  const SpecialOffersPageView({
    super.key,
  });

  @override
  State<SpecialOffersPageView> createState() => _SpecialOffersPageViewState();
}

class _SpecialOffersPageViewState extends State<SpecialOffersPageView> {
  int pageIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 154,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          start: 20.w,
          end: 16.w,
          top: 20.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.colorD9D9D9,
          borderRadius: BorderRadius.circular(40.r),
        ),
        child: PageView.builder(
          controller: _pageController,
          itemBuilder: (_, index) => SpecialOfferItem(pageIndex: pageIndex),
          itemCount: 5,
          onPageChanged: (index) => setState(() => pageIndex = index),
        ),
      ),
    );
  }
}
