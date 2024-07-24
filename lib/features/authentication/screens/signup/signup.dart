// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/constants/text_strings.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

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
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: MyTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: MySizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: MyTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),

                    /// Username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: MyTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),

                    /// Email
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: MyTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),

                    /// Phone Number
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: MyTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwInputFields),

                    /// Password
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: MyTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                        prefixIcon: Icon(Iconsax.password_check),
                      ),
                    ),
                    const SizedBox(height: MySizes.spaceBtwSections),

                    /// Terms & Conditions Checkbox
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ),
                        const SizedBox(width: MySizes.spaceBtwItems),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '${MyTexts.iAgreeTo} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: '${MyTexts.privacyPolicy}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? MyColors.white
                                          : MyColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? MyColors.white
                                          : MyColors.primary,
                                    ),
                              ),
                              TextSpan(
                                text: ' ${MyTexts.and} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: MyTexts.termOfUse,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color: dark
                                          ? MyColors.white
                                          : MyColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? MyColors.white
                                          : MyColors.primary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: MySizes.spaceBtwSections),

                    /// Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(MyTexts.createAccount),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
