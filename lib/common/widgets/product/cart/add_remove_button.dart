import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import 'package:mystore/common/widgets/icons/circular_icon.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class MyProductQuatityWithAddRemoveButton extends StatelessWidget {
  const MyProductQuatityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Add Remove Buttons
        MyCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyHelperFunctions.isDarkMode(context)
              ? MyColors.white
              : MyColors.black,
          backgroundColor: MyHelperFunctions.isDarkMode(context)
              ? MyColors.darkGrey
              : MyColors.light,
        ),

        const SizedBox(width: MySizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: MySizes.spaceBtwItems),

        const MyCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyColors.white,
          backgroundColor: MyColors.primary,
        ),
      ],
    );
  }
}
