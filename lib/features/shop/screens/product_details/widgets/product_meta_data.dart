import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/common/widgets/images/circular_image.dart';
import 'package:mystore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mystore/common/widgets/texts/product_price_text.dart';
import 'package:mystore/common/widgets/texts/product_title_text.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/enums.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            MyRoundedContainer(
              radius: MySizes.sm,
              backgroundColor: MyColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.sm, vertical: MySizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: MyColors.black),
              ),
            ),
            const SizedBox(width: MySizes.spaceBtwItems),

            /// Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: MySizes.spaceBtwItems),
            const MyProductPriceText(price: '175', isLarge: true)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        /// Title
        const MyProductTitleText(title: 'Futuristic Sneakers'),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const MyProductTitleText(title: 'Status'),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            MyCircularImage(
              image: MyImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? MyColors.white : MyColors.black,
            ),
            const MyBrandTitleWithVerifiedIcon(
              title: 'Close up',
              brandTextSize: TextSizes.medium,
            )
          ],
        ),
      ],
    );
  }
}
