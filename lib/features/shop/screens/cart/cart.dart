import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/icons/circular_icon.dart';
import 'package:mystore/common/widgets/images/rounded_image.dart';
import 'package:mystore/common/widgets/product/cart/add_remove_button.dart';
import 'package:mystore/common/widgets/product/cart/cart_item.dart';
import 'package:mystore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mystore/common/widgets/texts/product_title_text.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(
              height: MySizes.spaceBtwSections,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  MyCartItem(),
                  SizedBox(height: MySizes.spaceBtwItems),
                  Row(
                    children: [
                      const SizedBox(width: 70),
                      MyProductQuatityWithAddRemoveButton(),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
