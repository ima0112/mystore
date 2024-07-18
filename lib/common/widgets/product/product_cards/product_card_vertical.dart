import 'package:flutter/material.dart';

import 'package:mystore/common/styles/shadows.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
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
            padding: const EdgeInsets.all(MySizes.md),
            backgroundColor: dark ? MyColors.black : MyColors.light,
          ),
        ],
      ),
    );
  }
}
