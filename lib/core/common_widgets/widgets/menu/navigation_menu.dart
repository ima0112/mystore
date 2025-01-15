import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key, required this.child});
  final Widget child;

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  late ValueNotifier<int> selectedIndexNotifier;
  static final List<String> routes = [
    '/home',
    '/store',
    '/wishlist',
    '/settings',
  ];

  @override
  void initState() {
    selectedIndexNotifier = ValueNotifier<int>(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = MyHelperFunctions.isDarkMode(context);

    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, _) {
        return Scaffold(
          bottomNavigationBar: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              selectedIndexNotifier.value = index;
              context.go(routes[index]);
            },
            backgroundColor: darkMode ? MyColors.black : Colors.white,
            indicatorColor: darkMode
                ? MyColors.white.withOpacity(0.1)
                : MyColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ],
          ),
          body: widget.child,
        );
      },
    );
  }
}
