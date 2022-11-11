import 'package:flutter/material.dart';

part './kind/color_dark.dart';
part './kind/color_light.dart';

mixin _appColors {
  final Color white = const Color(0xffffffff);
  final Color green = const Color(0xff7bed8d);
  final Color mediumGrey = const Color(0xffa6bcd0);
  final Color mediumGreyBold = const Color(0xff748a9d);
  final Color lighterGrey = const Color(0xfff0f4f8);
  final Color lightGrey = const Color(0xffdbe2ed);
  final Color darkerGrey = const Color(0xff404e5a);
  final Color darkGrey = const Color(0xff4e5d6a);
}

abstract class IThemeColor{
  Color? appBarColor;
  Color? tabBarColor;
}
