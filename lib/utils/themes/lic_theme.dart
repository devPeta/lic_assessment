import 'package:flutter/material.dart';
import 'package:lic_assessment/utils/themes/custom_theme/text_theme.dart';
class LicAppTheme{

  LicAppTheme._();

  static ThemeData lightModeTheme = ThemeData(

    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    textTheme: LicTextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
  );
  static ThemeData darkModeTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    textTheme: LicTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Color(0xff070707),
  );
}