import 'package:flutter/material.dart';

import 'package:mystore/utils/constants/colors.dart';
import 'package:mystore/utils/constants/sizes.dart';
import 'package:mystore/utils/helpers/helper_functions.dart';

class MyCircularIcon extends StatelessWidget {
  /// A custom Circular Icon widget with a background color.
  ///
  /// Properties are:
  /// Container [width], [height] & [backgroundColor]
  ///
  /// Icon's [size], [color] & [onPressed]
  const MyCircularIcon({
    super.key,
    this.size = MySizes.lg,
    this.color,
    this.width,
    this.height,
    this.onPressed,
    this.backgroundColor,
    required this.icon,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? MyColors.black.withOpacity(0.9)
                : MyColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
