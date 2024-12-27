import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:carey/src/core/models/car.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:carey/src/core/widgets/products_sliver_grid.dart';

@RoutePage()
class BestOffersView extends StatelessWidget {
  const BestOffersView({super.key, required this.bestOffers});

  final List<Car> bestOffers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const CustomSliverAppBar(titleText: AppStrings.bestOffers),
            ProductsSliverGrid(cars: bestOffers),
          ],
        ),
      ),
    );
  }
}
