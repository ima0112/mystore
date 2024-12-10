import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/core/common_widgets/styles/spacing_styles.dart';
import 'package:mystore/core/common_widgets/widgets/loaders/full_screen_loader.dart';
import 'package:mystore/core/common_widgets/widgets/login_signup/form_divider.dart';
import 'package:mystore/core/common_widgets/widgets/login_signup/social_buttons.dart';
import 'package:mystore/core/common_widgets/widgets/snackbar/snackbar.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/injection/injection_container.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:mystore/features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart';

import 'package:mystore/features/authentication/presentation/screens/login/widgets/login_form.dart';
import 'package:mystore/features/authentication/presentation/screens/login/widgets/login_header.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/utils/extensions/extensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SignInFormBloc>()..add(const SignInFormEvent.started()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                error: (message) {
                  MyFullScreenLoader.stopLoadingDialog(context);
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(MySnackBar.errorSnackBar(message: message));
                },
                loggedIn: () {
                  context.goNamed(MyRoutes.home.name);
                },
                loading: () {
                  MyFullScreenLoader.showLoadingDialog(
                    context: context,
                    message: 'Logging you in...',
                    animation: MyImages.docerAmination,
                  );
                },
              );
            },
          ),
        ],
        child: Builder(builder: (context) {
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
        }),
      ),
    );
  }
}
