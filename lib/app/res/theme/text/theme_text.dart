import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

part './kind/text_dark.dart';
part './kind/text_light.dart';

abstract class IThemeText {
  IThemeText(this.primaryColor);
  final Color? primaryColor;
  late final TextTheme data;
  TextStyle? headline1;
  TextStyle? headline3;
  TextStyle? headline4;
  TextStyle? headline5;
  TextStyle? headline6;
  TextStyle? subtitle1;
  TextStyle? subtitle2;
  TextStyle? bodyText1;
  TextStyle? bodyText2;
  String? fontFamily;
}
