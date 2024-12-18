import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mystore/core/common_widgets/widgets/loaders/full_screen_loader.dart';
import 'package:mystore/core/common_widgets/widgets/snackbar/snackbar.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          processing: () {
            MyFullScreenLoader.showLoadingDialog(
              context: context,
              message: 'Processing your request...',
              animation: MyImages.docerAmination,
            );
          },
          error: (message) {
            MyFullScreenLoader.stopLoadingDialog(context);

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackBar.errorSnackBar(message: message));
          },
          passwordResetSent: (message, email) {
            MyFullScreenLoader.stopLoadingDialog(context);

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackBar.successSnackBar(message: message));
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(CupertinoIcons.clear),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                /// Image
                Image(
                  image: const AssetImage(MyImages.deliveredEmailIllustration),
                  width: MyHelperFunctions.screenWidth(context) * 0.6,
                ),
                const SizedBox(height: MySizes.spaceBtwSections),

                /// Title & SubTitle
                Text(
                  email,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  MyTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  MyTexts.changeYourPasswordSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwSections),

                /// Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.goNamed(MyRoutes.login.name);
                    },
                    child: const Text(MyTexts.done),
                  ),
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(
                            AuthenticationEvent.resetPassword(
                              email: email,
                            ),
                          );
                    },
                    child: const Text(MyTexts.resendEmail),
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
