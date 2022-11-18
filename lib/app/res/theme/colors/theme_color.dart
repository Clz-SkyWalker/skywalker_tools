import 'package:flutter/material.dart';
import 'package:skywalker_tools/app/res/export.dart';

// part './kind/color_dark.dart';
part './kind/color_light.dart';

abstract class IThemeColor {
  late Color primary;
  late Color onPrimary;
  late Color secondary;
  late Color onSecondary;
  late Color background;
  late Color onBackground;
  late Color surface;
  late Color onSurface;
  late Color error;
  late Color onError;
}
