import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/icons/circular_icon.dart';
import 'package:mystore/core/common_widgets/widgets/layouts/grid_layout.dart';
import 'package:mystore/core/common_widgets/widgets/product/product_cards/product_card_vertical.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/routing/go_routes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MyCircularIcon(
            icon: Iconsax.add,
            onPressed: () {
              context.goNamed(MyRoutes.home.name);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              MyGridLayout(
                itemCount: 8,
                itemBuilder: (_, index) {
                  return const MyProductCardVertical();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
