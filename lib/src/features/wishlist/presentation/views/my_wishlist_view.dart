import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyWishlistView extends StatelessWidget {
  const MyWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(titleText: AppStrings.myWishlist),
            ProductsSliverGrid(),
          ],
        ),
      ),
    );
  }
}
