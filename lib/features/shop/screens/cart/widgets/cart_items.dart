import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/product/cart/add_remove_button.dart';
import 'package:mystore/common/widgets/product/cart/cart_item.dart';
import 'package:mystore/common/widgets/texts/product_price_text.dart';
import 'package:mystore/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(
        height: MySizes.spaceBtwSections,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            const MyCartItem(),
            if (showAddRemoveButtons)
              const SizedBox(height: MySizes.spaceBtwItems),
            if (showAddRemoveButtons)
              const Row(
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
    );
  }
}
