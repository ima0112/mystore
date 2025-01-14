import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/core/common_widgets/widgets/loaders/full_screen_loader.dart';
import 'package:mystore/core/common_widgets/widgets/login_signup/form_divider.dart';
import 'package:mystore/core/common_widgets/widgets/login_signup/social_buttons.dart';
import 'package:mystore/core/common_widgets/widgets/snackbar/snackbar.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:mystore/features/authentication/presentation/screens/signup/widgets/signup_form.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            MyFullScreenLoader.showLoadingDialog(
              context: context,
              message: 'We are creating your account...',
              animation: MyImages.docerAmination,
            );
          },
          error: (message) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackBar.errorSnackBar(message: message));
          },
          success: (message) {
            context.goNamed(MyRoutes.verifyEmail.name);

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackBar.successSnackBar(message: message));
          },
          orElse: () {},
        );
      },
      child: Scaffold(
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
      ),
    );
  }
}
