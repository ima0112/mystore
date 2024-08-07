import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/common/widgets/product/cart/coupon_widget.dart';
import 'package:mystore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:mystore/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:mystore/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

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

              /// Billing Section
              MyRoundedContainer(
                showBorder: true,
                roundedChild: false,
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: dark ? MyColors.black : MyColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    /// Address
                    const BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// Checkout Button
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
