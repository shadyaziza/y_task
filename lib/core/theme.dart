import 'package:flutter/material.dart';

import 'constants/styles.dart';

class AppTheme {
  AppTheme._();
  static final appTheme = ThemeData(
      fontFamily: 'Noto Sans',
      primaryColor: kPrimaryColor,
      buttonColor: kButtonColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          backgroundColor: MaterialStateProperty.all(kButtonColor),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(kBackgroundColorDark),
        ),
      ),
      iconTheme: IconThemeData(color: kIconColor),
      appBarTheme: AppBarTheme(
          backgroundColor: kPrimaryColor,
          foregroundColor: kBackgroundColorLight),
      scaffoldBackgroundColor: kBackgroundColorLight);
}

extension ThemeAddon on ThemeData {
  Color get gradientLightColor => kGradientColorLight;
  Color get gradientDarkColor => kGradientColorDark;
  Color get backgroundColorDark => kBackgroundColorDark;
  Color get bannerColor => kBannerColor;
  Color get tagContainerColor => kContainerTagColor;
}
