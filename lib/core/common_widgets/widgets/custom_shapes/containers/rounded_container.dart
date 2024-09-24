import 'package:flutter/material.dart';
import 'package:mystore/core/constants/colors.dart';
import 'package:mystore/core/constants/sizes.dart';

class MyRoundedContainer extends StatelessWidget {
  const MyRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = MySizes.cardRadiusLg,
    this.backgroundColor = MyColors.white,
    this.borderColor = MyColors.borderPrimary,
    this.roundedChild = true,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool roundedChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: roundedChild
          ? ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: child,
            )
          : child,
    );
  }
}
