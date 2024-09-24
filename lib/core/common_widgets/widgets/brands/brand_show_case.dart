import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/widgets/brands/brand_card.dart';
import 'package:mystore/core/common_widgets/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';

import 'package:mystore/core/utils/helpers/helper_functions.dart';

class MyBrandShowCase extends StatelessWidget {
  const MyBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  Widget brandProductImageWidget(String image, context) {
    return Expanded(
      child: MyRoundedContainer(
        height: 100,
        backgroundColor: MyHelperFunctions.isDarkMode(context)
            ? MyColors.darkerGrey
            : MyColors.light,
        margin: const EdgeInsets.only(right: MySizes.sm),
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MySizes.md),
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Product Count
          const MyBrandCard(showBorder: false),
          const SizedBox(height: MySizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(
            children:
                images.map((e) => brandProductImageWidget(e, context)).toList(),
          ),
        ],
      ),
    );
  }
}
