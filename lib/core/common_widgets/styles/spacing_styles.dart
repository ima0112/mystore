import 'package:flutter/material.dart';
import 'package:mystore/core/constants/sizes.dart';

class MySpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    bottom: MySizes.defaultSpace,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
  );
}
