part of '../theme_color.dart';

class ColorDark with _appColors implements IThemeColor {
  ColorDark() {
    appBarColor = darkerGrey;
    tabBarColor = green;
  }

  @override
  Color? appBarColor;

  @override
  Color? tabBarColor;
}
