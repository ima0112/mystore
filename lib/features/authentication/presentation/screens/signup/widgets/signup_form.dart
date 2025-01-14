import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:iconsax/iconsax.dart';
import 'package:mystore/features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart';

import 'package:mystore/features/authentication/presentation/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/inputs/user_inputs.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordVisible = false;
  bool isPrivacyAccepted = false;

  final _firstNameController = TextEditingController();

  final _lastNameController = TextEditingController();

  final _usernameController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneNumberController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              Row(
                children: [
                  /// First Name
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      controller: _firstNameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        labelText: MyTexts.firstName,
                        prefixIcon: const Icon(Iconsax.user),
                        errorText: state.firstName.isPure
                            ? null
                            : state.firstName.error?.message,
                      ),
                    ),
                  ),
                  const SizedBox(width: MySizes.spaceBtwInputFields),

                  /// Last Name
                  Expanded(
                    child: TextFormField(
                      expands: false,
                      controller: _lastNameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        labelText: MyTexts.lastName,
                        prefixIcon: const Icon(Iconsax.user),
                        errorText: state.lastName.isPure
                            ? null
                            : state.lastName.error?.message,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: MySizes.spaceBtwInputFields),

              /// Username
              TextFormField(
                expands: false,
                controller: _usernameController,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: MyTexts.username,
                  prefixIcon: const Icon(Iconsax.user_edit),
                  errorText: state.username.isPure
                      ? null
                      : state.username.error?.message,
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwInputFields),

              /// Email
              TextFormField(
                controller: _emailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: MyTexts.email,
                  prefixIcon: const Icon(Iconsax.direct),
                  errorText:
                      state.email.isPure ? null : state.email.error?.message,
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwInputFields),

              /// Phone Number
              TextFormField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: MyTexts.phoneNo,
                  prefixIcon: const Icon(Iconsax.call),
                  prefixText: '+1',
                  errorText: state.phoneNumber.isPure
                      ? null
                      : state.phoneNumber.error?.message,
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwInputFields),

              /// Password
              TextFormField(
                controller: _passwordController,
                obscureText: isPasswordVisible,
                decoration: InputDecoration(
                  labelText: MyTexts.password,
                  suffixIcon: IconButton(
                    icon: isPasswordVisible
                        ? const Icon(Iconsax.eye)
                        : const Icon(Iconsax.eye_slash),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  prefixIcon: const Icon(Iconsax.password_check),
                  errorText: state.password.isPure
                      ? null
                      : state.password.error?.message,
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Terms & Conditions Checkbox
              TermsAndConditionsCheckbox(
                value: isPrivacyAccepted,
                onChanged: (value) {
                  setState(() {
                    isPrivacyAccepted = value!;
                  });
                },
              ),
              const SizedBox(height: MySizes.spaceBtwSections),

              /// Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<SignUpFormBloc>().add(
                          SignUpFormEvent.formSubmitted(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                            phoneNumber: _phoneNumberController.text,
                            username: _usernameController.text,
                            privacyAccepted: isPrivacyAccepted,
                          ),
                        );
                    // context.goNamed(MyRoutes.verifyEmail.name);
                  },
                  child: const Text(MyTexts.createAccount),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
