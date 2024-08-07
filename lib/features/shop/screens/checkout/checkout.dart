import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/product/cart/coupon_widget.dart';
import 'package:mystore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:mystore/utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              CartItems(showAddRemoveButtons: false),
              SizedBox(height: MySizes.spaceBtwSections),

              /// Coupon TextField
              MyCouponCode(),
              SizedBox(height: MySizes.spaceBtwSections),

              ///
            ],
          ),
        ),
      ),
    );
  }
}
