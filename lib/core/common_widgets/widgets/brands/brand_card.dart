import 'package:flutter/material.dart';

import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/core/common_widgets/widgets/images/circular_image.dart';
import 'package:mystore/core/common_widgets/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/enums.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class MyBrandCard extends StatelessWidget {
  const MyBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: MyRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(MySizes.sm),
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: MyCircularImage(
                isNetworkImage: false,
                image: MyImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? MyColors.white : MyColors.black,
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems / 2),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyBrandTitleWithVerifiedIcon(
                    title: 'Close up',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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
