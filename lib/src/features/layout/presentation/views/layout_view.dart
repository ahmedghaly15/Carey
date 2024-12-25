import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carey/src/core/router/app_router.dart';
import 'package:carey/src/core/utils/app_strings.dart';
import 'package:carey/src/features/layout/presentation/widgets/custom_navigation_destination.dart';

@RoutePage()
class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        OrdersRoute(),
        InboxRoute(),
        WalletRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => NavigationBar(
        indicatorColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: (index) => tabsRouter.setActiveIndex(index),
        destinations: const [
          CustomNavigationDestination(
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
            label: AppStrings.home,
          ),
          CustomNavigationDestination(
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            label: "Device Token",
          ),
          CustomNavigationDestination(
            icon: Icons.inbox_outlined,
            selectedIcon: Icons.inbox,
            label: AppStrings.inbox,
          ),
          CustomNavigationDestination(
            icon: Icons.wallet_outlined,
            selectedIcon: Icons.wallet,
            label: AppStrings.wallet,
          ),
          CustomNavigationDestination(
            icon: Icons.person_2_outlined,
            selectedIcon: Icons.person_2_rounded,
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
