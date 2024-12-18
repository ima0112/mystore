import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/core/common_widgets/widgets/loaders/full_screen_loader.dart';
import 'package:mystore/core/common_widgets/widgets/snackbar/snackbar.dart';
import 'package:mystore/core/constants/image_strings.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/core/utils/extensions/extensions.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (message) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackBar.errorSnackBar(message: message));
          },
          processing: () {
            MyFullScreenLoader.showLoadingDialog(
              context: context,
              message: 'Processing your request...',
              animation: MyImages.docerAmination,
            );
          },
          passwordResetSent: (message, email) {
            context.goNamed(MyRoutes.resetPassword.name, extra: email);

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(MySnackBar.successSnackBar(message: message));
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Headings
                Text(
                  MyTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  MyTexts.forgetPasswordSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: MySizes.spaceBtwSections * 2),

                /// Text field
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }

                    if (!value.isValidEmail) {
                      return 'Invalid email address';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: MyTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
                const SizedBox(height: MySizes.spaceBtwSections),

                /// Submit Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<AuthenticationBloc>()
                            .add(AuthenticationEvent.resetPassword(
                              email: emailController.text.trim(),
                            ));
                      }
                    },
                    child: const Text(MyTexts.submit),
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
