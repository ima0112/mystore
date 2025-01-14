import 'package:flutter/material.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/utils/helpers/helper_functions.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MyColors.darkGrey : MyColors.grey,
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? MyColors.darkGrey : MyColors.grey,
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
