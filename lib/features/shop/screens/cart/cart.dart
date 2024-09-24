import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';

import 'package:mystore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/routing/go_routes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: CartItems(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            context.goNamed(MyRoutes.checkout.name);
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
