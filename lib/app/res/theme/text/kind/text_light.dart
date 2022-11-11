part of '../theme_text.dart';

class TextLight implements IThemeText {
  TextLight(this.primaryColor) {
    data = TextTheme(
      headline6: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal),
      subtitle1: TextStyle(fontSize: 16.sp),
    ).apply(bodyColor: primaryColor);
    fontFamily = GoogleFonts.arvo().fontFamily;
  }

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  late TextTheme data;

  @override
  String? fontFamily;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;

  @override
  final Color? primaryColor;
}
