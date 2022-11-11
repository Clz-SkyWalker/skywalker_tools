import 'package:flutter/material.dart';
import 'package:skywalker_tools/app/res/theme/colors/theme_color.dart';
import 'package:skywalker_tools/app/res/theme/text/theme_text.dart';

abstract class ITheme {
  IThemeColor get colorTheme;

  IThemeText get textTheme;
}

abstract class IThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
        fontFamily: theme.textTheme.fontFamily,
        textTheme: theme.textTheme.data,
      );
}

class ThemeDark extends ITheme {
  ThemeDark() {
    textTheme = TextDark(colorTheme.appBarColor);
  }

  @override
  IThemeColor get colorTheme => ColorDark();
  @override
  late final IThemeText textTheme;
}

class ThemeLight extends ITheme {
  ThemeLight() {
    textTheme = TextLight(colorTheme.appBarColor);
  }

  @override
  IThemeColor get colorTheme => ColorLight();
  @override
  late final IThemeText textTheme;
}
