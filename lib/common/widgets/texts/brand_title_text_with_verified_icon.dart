import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/widgets/texts/brand_title_text.dart';

import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/enums.dart';
import 'package:mystore/utils/constants/sizes.dart';

class MyBrandTitleWithVerifiedIcon extends StatelessWidget {
  const MyBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.iconColor = MyColors.primary,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            // overflow: TextOverflow.ellipsis,
            // maxLines: 1,
            // style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        const SizedBox(width: MySizes.xs),
        const Icon(Iconsax.verify5,
            color: MyColors.primary, size: MySizes.iconXs),
      ],
    );
  }
}
