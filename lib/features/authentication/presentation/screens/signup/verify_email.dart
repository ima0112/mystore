import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mystore/core/common_widgets/widgets/snackbar/snackbar.dart';

import 'package:mystore/core/common_widgets/widgets/success_screen/success_screen.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/decoder/decoder.dart';
import 'package:mystore/core/utils/extensions/extensions.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key, required this.email});

  final String email;

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  late String email;

  int secondsRemaining = 0;

  goToSucessScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SuccessScreen(
          image: Lottie.asset(
            MyImages.checkRegisterAmination,
            width: MediaQuery.of(context).size.width * 0.6,
            decoder: (bytes) => MyLottieDecoder.customDecoder(bytes),
          ),
          title: MyTexts.yourAccountCreatedTitle,
          subTitle: MyTexts.yourAccountCreatedSubitle,
          onPressed: () {
            context.goNamed(MyRoutes.login.name);
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    email = widget.email;

    context
        .read<AuthenticationBloc>()
        .add(AuthenticationEvent.verifyEmail(email: email));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listenWhen: (previous, current) => true,
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            resendCooldown: (int seconds) {
              setState(() {
                secondsRemaining = seconds;
              });
            },
            error: (message) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(MySnackBar.errorSnackBar(message: message));
            },
            loggedOut: () {
              context.goNamed(MyRoutes.login.name);
            },
            emailVerificationSent: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  MySnackBar.successSnackBar(
                    message:
                        'Please Check your inbox for the verification email',
                  ),
                );
            },
            emailVerified: () {
              goToSucessScreen();
            });
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                context.read<AuthenticationBloc>().add(
                      const AuthenticationEvent.logout(),
                    );
              },
              icon: const Icon(CupertinoIcons.clear),
            ),
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

                // Title & SubTitle
                Text(
                  MyTexts.confirmEmailTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  email,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  MyTexts.confirmEmailSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: MySizes.spaceBtwSections),

                // Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(
                            const AuthenticationEvent.checkEmailVerification(),
                          );
                    },
                    child: const Text(MyTexts.myContinue),
                  ),
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: secondsRemaining > 0
                        ? null
                        : () {
                            context.read<AuthenticationBloc>().add(
                                  AuthenticationEvent.verifyEmail(email: email),
                                );
                          },
                    child: Text(secondsRemaining > 0
                        ? '${MyTexts.resendEmail} (${secondsRemaining.formatTime})'
                        : MyTexts.resendEmail),
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
