import 'package:flutter/material.dart';
import 'package:mystore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/common/widgets/images/circular_image.dart';
import 'package:mystore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/enums.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

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
