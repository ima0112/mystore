import 'package:flutter/material.dart';

import 'package:mystore/common/widgets/login_signup/form_divider.dart';
import 'package:mystore/common/widgets/login_signup/social_buttons.dart';
import 'package:mystore/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                MyTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Form
              const SignupForm(),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Divider
              const FormDivider(dividerText: MyTexts.orSignUpWith),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
