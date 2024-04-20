import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class BTAppTheme {
  BTAppTheme._(); // "_" to say private constructor


  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    //primaryColor: Colors.blue,
    primaryColor: Colors.green,
    textTheme: BTTextTheme.lightTextTheme,
    chipTheme: BTChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: BTAppBarTheme.lightAppBarTheme,
    checkboxTheme: BTCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: BTBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BTElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: BTOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTTextFormFieldTheme.lightInputDecorationTheme,
  );
  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    //primaryColor: Colors.blue,
    primaryColor: Colors.green,
    textTheme: BTTextTheme.darkTextTheme,
    chipTheme: BTChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: BTAppBarTheme.darkAppBarTheme,
    checkboxTheme: BTCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: BTBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: BTElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: BTOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BTTextFormFieldTheme.darkInputDecorationTheme,
  );
}

class BTCheckboxTheme {
}