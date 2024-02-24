import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/tokens/typography/typography.dart';

class SmartTypographyFoundation {
  const SmartTypographyFoundation._();

  static TextStyle _base({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      GoogleFonts.manrope(
        fontSize: (fontSize ?? SmartTypography.body.fontSize) * 1.sp,
        color: color,
        fontWeight: fontWeight ?? SmartTypography.body.fontWeight,
        decoration: decoration,
        height: height,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      );

  static TextStyle heading3Xl({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.heading3Xl.fontSize,
        color: color,
        height: height,
        fontWeight: SmartTypography.heading3Xl.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle heading2Xl({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.heading2Xl.fontSize,
        color: color,
        height: height,
        fontWeight: SmartTypography.heading2Xl.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle headingXl({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.headingXl.fontSize,
        color: color,
        height: height,
        fontWeight: SmartTypography.headingXl.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle headingLg({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.headingLg.fontSize,
        color: color,
        height: height,
        fontWeight: SmartTypography.headingLg.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle heading({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.heading.fontSize,
        color: color,
        height: height,
        fontWeight: SmartTypography.heading.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle headingSm({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.headingSm.fontSize,
        color: color,
        height: height,
        fontWeight: SmartTypography.headingSm.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle headingXs({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.headingXs.fontSize,
        color: color,
        height: height,
        fontWeight: SmartTypography.headingXs.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle bodyLg({
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.bodyLg.fontSize,
        color: color,
        height: height,
        fontWeight: fontWeight ?? SmartTypography.bodyLg.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle body({
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        color: color,
        height: height,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle bodySm({
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.bodySm.fontSize,
        color: color,
        height: height,
        fontWeight: fontWeight ?? SmartTypography.bodySm.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );

  static TextStyle bodyXs({
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      _base(
        fontSize: SmartTypography.bodyXs.fontSize,
        color: color,
        height: height,
        fontWeight: fontWeight ?? SmartTypography.bodyXs.fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );
}
