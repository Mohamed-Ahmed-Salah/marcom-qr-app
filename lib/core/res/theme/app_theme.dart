import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../styles/colours.dart';

abstract class CustomTheme {
  static AppBarTheme appBarLightTheme = const AppBarTheme(
    backgroundColor: Colours.kLightBorderColor,
    elevation: 4,
    iconTheme: IconThemeData(color: Colours.textBlackColor),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colours.textBlackColor,
    ),
  );
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colours.kLightPurple,
      disabledBackgroundColor: Colours.kLightPurple,
      disabledForegroundColor: Colours.kBlack,
      foregroundColor: Colours.kBlack,
      minimumSize: Size(0, 6.h),
      textStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colours.kWhite),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(20)),
      ),
    ),
  );

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: Colours.kDarkPurple),
      primaryColor: Colours.kDarkPurple,
      scaffoldBackgroundColor: Colours.scaffoldBackground,
      appBarTheme: appBarLightTheme,
      iconTheme: const IconThemeData(color: Colours.textBlackColor),
      elevatedButtonTheme: elevatedButtonThemeData,

    );
  }
}
