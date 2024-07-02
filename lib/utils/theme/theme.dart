import 'package:flutter/material.dart';
import 'package:mystore/utils/theme/custom_themes/text_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.darkTextTheme,
  );
}