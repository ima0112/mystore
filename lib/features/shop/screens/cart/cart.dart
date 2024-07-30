import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/product/cart/add_remove_button.dart';
import 'package:mystore/common/widgets/product/cart/cart_item.dart';
import 'package:mystore/common/widgets/texts/product_price_text.dart';
import 'package:mystore/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) => const SizedBox(
            height: MySizes.spaceBtwSections,
          ),
          itemBuilder: (context, index) {
            return const Column(
              children: [
                MyCartItem(),
                SizedBox(height: MySizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        /// Extra Space
                        SizedBox(width: 70),

                        /// Add Remove Buttons
                        MyProductQuatityWithAddRemoveButton(),
                      ],
                    ),

                    /// Product Total Price
                    MyProductPriceText(price: '256'),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
