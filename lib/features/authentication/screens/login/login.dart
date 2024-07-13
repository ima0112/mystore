import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/common/styles/spacing_styles.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/image_strings.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/constants/text_strings.dart';
import 'package:mystore/utils/extensions/extensions.dart';
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
              /// Header: Logo, Title & Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? MyImages.darkAppLogo : MyImages.lightAppLogo,
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

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: MySizes.spaceBtwSections,
                  ),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: MyTexts.email,
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: MyTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwInputFields / 2),

                      /// Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember Me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(MyTexts.rememberMe),
                            ],
                          ),

                          ///Forget Password
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              MyTexts.forgetPassword,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: MySizes.spaceBtwSections),

                      /// Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(MyTexts.signIn),
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwItems),

                      /// Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(MyTexts.createAccount),
                        ),
                      ),
                      const SizedBox(height: MySizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? MyColors.darkGrey : MyColors.grey,
                      indent: 60,
                      endIndent: 5,
                      thickness: 0.5,
                    ),
                  ),
                  Text(
                    MyTexts.orSignInWith.capitalize,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? MyColors.darkGrey : MyColors.grey,
                      indent: 5,
                      endIndent: 60,
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              // Footer
              Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
