import 'package:flutter/material.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(MyImages.google),
              width: MySizes.iconMd,
              height: MySizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: MySizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(MyImages.facebook),
              width: MySizes.iconMd,
              height: MySizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
