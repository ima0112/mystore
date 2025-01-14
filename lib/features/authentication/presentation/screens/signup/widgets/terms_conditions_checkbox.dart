import 'package:flutter/material.dart';

import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';
import 'package:mystore/core/constants/text_strings.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
    this.value = false,
    this.onChanged,
  });

  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
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
                text: MyTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? MyColors.white : MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? MyColors.white : MyColors.primary,
                    ),
              ),
              TextSpan(
                text: ' ${MyTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: MyTexts.termOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? MyColors.white : MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? MyColors.white : MyColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
