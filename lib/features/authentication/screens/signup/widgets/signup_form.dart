import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import 'package:mystore/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
          const TermsAndConditionsCheckbox(),
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
    );
  }
}
