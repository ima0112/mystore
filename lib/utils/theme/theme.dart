import 'package:flutter/material.dart';
import 'package:mystore/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mystore/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:mystore/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mystore/utils/theme/custom_themes/chip_theme.dart';
import 'package:mystore/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:mystore/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mystore/utils/theme/custom_themes/text_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
    elevatedButtonTheme: MyELevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    chipTheme: MyChipTheme.lightChipTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.darkTextTheme,
    elevatedButtonTheme: MyELevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    chipTheme: MyChipTheme.darkChipTheme,
  );
}
