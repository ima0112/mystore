import 'package:flutter/material.dart';
import 'package:mystore/common/styles/spacing_styles.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/constants/text_strings.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Header: Logo, Title & Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? MyImages.loginImageDark : MyImages.loginImageLight,
                    ),
                  ),
                  Text(
                    MyTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: MySizes.sm,
                  ),
                  Text(
                    MyTexts.loginSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
