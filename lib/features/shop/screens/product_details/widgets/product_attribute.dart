import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/common/widgets/texts/product_price_text.dart';
import 'package:mystore/common/widgets/texts/product_title_text.dart';
import 'package:mystore/common/widgets/texts/section_heading.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// Selected Attribute Pricing & Description
        MyRoundedContainer(
          padding: const EdgeInsets.all(MySizes.md),
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const MySectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: MySizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MyProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: MySizes.spaceBtwItems),

                          /// Sale Price
                          const MyProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Stock', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              MyProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
