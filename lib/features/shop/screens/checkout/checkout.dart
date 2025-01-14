import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/appbar/appbar.dart';
import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/core/common_widgets/widgets/product/cart/coupon_widget.dart';

import 'package:mystore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:mystore/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:mystore/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';
import 'package:mystore/core/utils/payments/stripe_payment.dart';

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
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const CartItems(showAddRemoveButtons: false),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Coupon TextField
              const MyCouponCode(),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Billing Section
              MyRoundedContainer(
                showBorder: true,
                roundedChild: false,
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: dark ? MyColors.black : MyColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    SizedBox(height: MySizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: MySizes.spaceBtwItems),

                    /// Address
                    BillingAddressSection(),
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
          onPressed: () async {
            await StripePaymnet.makePayment(amount: '256');
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
