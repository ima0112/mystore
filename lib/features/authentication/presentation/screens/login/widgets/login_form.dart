import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/inputs/user_inputs.dart';
import 'package:mystore/core/routing/go_routes.dart';
import 'package:mystore/features/authentication/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:mystore/features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool obscureText = true;
  bool rememberMe = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        _emailController.text = state.email.value;
        _passwordController.text = state.password.value;

        if (state.isFormValid == true) {
          context.read<AuthenticationBloc>().add(
                AuthenticationEvent.signinWithEmailAndPassword(
                  email: state.email.value.trim(),
                  password: state.password.value.trim(),
                  rememberMe: rememberMe,
                ),
              );
        }
      },
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          return Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: MySizes.spaceBtwSections,
              ),
              child: Column(
                children: [
                  /// Email
                  TextFormField(
                    controller: _emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.direct_right),
                      labelText: MyTexts.email,
                      errorText: state.email.isPure
                          ? null
                          : state.email.error?.message,
                    ),
                  ),
                  const SizedBox(height: MySizes.spaceBtwInputFields),

                  /// Password
                  TextFormField(
                    controller: _passwordController,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      labelText: MyTexts.password,
                      prefixIcon: const Icon(Iconsax.password_check),
                      errorText: state.password.isPure
                          ? null
                          : state.password.error?.message,
                      suffixIcon: IconButton(
                        icon: obscureText
                            ? const Icon(Iconsax.eye)
                            : const Icon(Iconsax.eye_slash),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
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
                          Checkbox(
                              value: rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  rememberMe = value!;
                                });
                              }),
                          const Text(MyTexts.rememberMe),
                        ],
                      ),

                      /// Forget Password
                      TextButton(
                        onPressed: () {
                          context.goNamed(MyRoutes.forgetPassword.name);
                        },
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
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              SignInFormEvent.formSubmitted(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim(),
                              ),
                            );
                      },
                      child: const Text(MyTexts.signIn),
                    ),
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),

                  /// Create Account Button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        context.goNamed(MyRoutes.signup.name);
                      },
                      child: const Text(MyTexts.createAccount),
                    ),
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
