import 'package:flutter/material.dart';
import 'package:mystore/core/common_widgets/styles/spacing_styles.dart';
import 'package:mystore/core/common_widgets/widgets/login_signup/form_divider.dart';
import 'package:mystore/core/common_widgets/widgets/login_signup/social_buttons.dart';

import 'package:mystore/features/authentication/presentation/screens/login/widgets/login_form.dart';
import 'package:mystore/features/authentication/presentation/screens/login/widgets/login_header.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/utils/extensions/extensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Header: Logo, Title & Subtitle
              const LoginHeader(),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: MyTexts.orSignInWith.capitalize),
              const SizedBox(height: MySizes.spaceBtwSections),

              // Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
