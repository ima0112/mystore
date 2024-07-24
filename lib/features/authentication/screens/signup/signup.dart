import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
