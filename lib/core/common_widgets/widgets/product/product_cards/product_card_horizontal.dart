import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/core/common_widgets/widgets/icons/circular_icon.dart';
import 'package:mystore/core/common_widgets/widgets/images/rounded_image.dart';
import 'package:mystore/core/common_widgets/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mystore/core/common_widgets/widgets/texts/product_price_text.dart';
import 'package:mystore/core/common_widgets/widgets/texts/product_title_text.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class MyProductCardHorizontal extends StatelessWidget {
  const MyProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      width: 300,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColors.darkerGrey : MyColors.softGrey,
      ),
      child: Row(
        children: [
          /// Thumbnail
          MyRoundedContainer(
            height: 120,
            backgroundColor: dark ? MyColors.dark : MyColors.light,
            child: Stack(
              /// Thumbnail Image
              children: [
                // ignore: prefer_const_constructors
                MyRoundedImage(
                  imageUrl: MyImages.productImage1,
                  fit: BoxFit.cover,
                  applyImageRadius: true,
                ),

                /// Sale Tag
                Positioned(
                  top: 12,
                  left: 4,
                  child: MyRoundedContainer(
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
                ),

                /// Favourite Icon Button
                const Positioned(
                  top: 4,
                  right: 4,
                  child: MyCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 180,
            child: Padding(
              padding: const EdgeInsets.only(top: MySizes.sm, left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyProductTitleText(
                          title: 'Futuristic Sneakers', smallSize: true),
                      SizedBox(height: MySizes.spaceBtwItems / 2),
                      MyBrandTitleWithVerifiedIcon(title: 'Close up'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: MyProductPriceText(price: '256.0')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: MyColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MySizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(MySizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: MySizes.iconLg * 1.2,
                          height: MySizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: MyColors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
