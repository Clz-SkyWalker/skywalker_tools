import 'package:flutter/material.dart';
import 'package:skywalker_tools/app/res/theme/colors/theme_color.dart';
import 'package:skywalker_tools/app/res/theme/text/theme_text.dart';

abstract class ITheme {
  IThemeColor get colorTheme;

  IThemeText get textTheme;
}

abstract class IThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
        textTheme: theme.textTheme.data,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: theme.colorTheme.primary,
          onPrimary: theme.colorTheme.onPrimary,
          secondary: theme.colorTheme.secondary,
          onSecondary: theme.colorTheme.onSecondary,
          error: theme.colorTheme.error,
          onError: theme.colorTheme.onError,
          background: theme.colorTheme.background,
          onBackground: theme.colorTheme.onBackground,
          surface: theme.colorTheme.surface,
          onSurface: theme.colorTheme.onSurface,
        ),
      );
}

// class ThemeDark extends ITheme {
//   ThemeDark() {
//     textTheme = TextDark(colorTheme.primaryColor);
//   }
//
//   @override
//   IThemeColor get colorTheme => ColorDark();
//   @override
//   late final IThemeText textTheme;
// }

class ThemeLight extends ITheme {
  ThemeLight() {
    textTheme = TextLight(colorTheme.primary);
  }

  @override
  IThemeColor get colorTheme => ColorLight();
  @override
  late final IThemeText textTheme;
}
