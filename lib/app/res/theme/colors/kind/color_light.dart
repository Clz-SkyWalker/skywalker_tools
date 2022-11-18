part of '../theme_color.dart';

class ColorLight implements IThemeColor {
  ColorLight() {
    primary = ColorName.lightPrimary;
    onPrimary = ColorName.lightOnPrimary;
    secondary = ColorName.lightSecondary;
    onSecondary = ColorName.lightOnSecondary;
    background = ColorName.lightBackground;
    onBackground = ColorName.lightOnBackground;
    surface = ColorName.lightSurface;
    onSurface = ColorName.lightOnSurface;
    error = ColorName.lightError;
    onError = ColorName.lightOnError;
  }

  @override
  late Color background;

  @override
  late Color onBackground;

  @override
  late Color onPrimary;

  @override
  late Color onSurface;

  @override
  late Color primary;

  @override
  late Color surface;

  @override
  late Color error;

  @override
  late Color onError;

  @override
  late Color onSecondary;

  @override
  late Color secondary;
}
