part of '../theme_color.dart';

class ColorLight with _appColors implements IThemeColor {
  ColorLight() {
    appBarColor = white;
    tabBarColor = green;
  }

  @override
  Color? appBarColor;

  @override
  Color? tabBarColor;
}
