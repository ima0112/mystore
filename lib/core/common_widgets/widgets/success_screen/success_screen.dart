import 'package:flutter/material.dart';

import 'package:mystore/core/common_widgets/styles/spacing_styles.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });

  final String title, subTitle;
  final Widget image;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: MySpacingStyles.paddingWithAppBarHeight * 2,
            child: Column(
              children: [
                /// Image
                image,
                const SizedBox(height: MySizes.spaceBtwSections),

                // Title & SubTitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwSections),

                // Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(MyTexts.myContinue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
