import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/models/car.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';

@RoutePage()
class MyWishlistView extends StatelessWidget {
  const MyWishlistView({super.key, required this.wishlistCars});

  final List<Car> wishlistCars;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.myWishlist),
            ProductsSliverGrid(cars: wishlistCars),
          ],
        ),
      ),
    );
  }
}
