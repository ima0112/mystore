import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import 'package:mystore/common/widgets/appbar/appbar.dart';
import 'package:mystore/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:mystore/common/widgets/icons/circular_icon.dart';
import 'package:mystore/common/widgets/images/rounded_image.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return MyCurvedEdgeWidget(
      child: Container(
        color: dark ? MyColors.darkerGrey : MyColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(MyImages.productImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              left: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: MySizes.defaultSpace,
                  ),
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: MySizes.spaceBtwItems),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return MyRoundedImage(
                      width: 80,
                      backgroundColor: dark ? MyColors.dark : MyColors.white,
                      border: Border.all(color: MyColors.primary),
                      imageUrl: MyImages.productImage2,
                    );
                  },
                ),
              ),
            ),

            /// Appbar Icons
            const MyAppBar(
              showBackArrow: true,
              actions: [
                MyCircularIcon(icon: Iconsax.heart5, color: Colors.red)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
