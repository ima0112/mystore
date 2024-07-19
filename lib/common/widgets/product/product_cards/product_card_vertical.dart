import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mystore/common/styles/shadows.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/common/widgets/icons/circular_icon.dart';
import 'package:mystore/common/widgets/images/rounded_image.dart';
import 'package:mystore/common/widgets/texts/product_title_text.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            MyRoundedContainer(
              height: 180,
              backgroundColor: dark ? MyColors.black : MyColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  /// MyRoundedImage(
                  const MyRoundedImage(
                    imageUrl: MyImages.productImage2,
                    applyImageRadius: true,
                  ),

                  /// Sale Tag
                  Positioned(
                    top: 16,
                    left: 4,
                    child: MyRoundedContainer(
                      radius: MySizes.sm,
                      backgroundColor: MyColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: MySizes.sm,
                        vertical: MySizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyColors.black),
                      ),
                    ),
                  ),

                  /// Favorite Icon Button
                  Positioned(
                    top: 4,
                    right: 4,
                    child: MyCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems / 2,
            ),

            /// Details
            Padding(
              padding: const EdgeInsets.only(left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyProductTitleText(
                    title: 'Futuristic Sneakers',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Close up',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: MySizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: MyColors.primary,
                        size: MySizes.iconXs,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      Text(
                        '\$35.5',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),

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
                            child: Icon(
                              Iconsax.add,
                              color: MyColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
