import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/tokens/typography/smart_typography.dart';

class SmartTypographyFoundation {
  const SmartTypographyFoundation._();

  static TextStyle _base({
    double fontSize = SmartTypography.body,
    FontWeight? fontWeight = FontWeight.w400,
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? letterSpacing,
    double? wordSpacing,
  }) =>
      GoogleFonts.manrope(
        fontSize: fontSize * 1.sp,
        color: color,
        fontWeight: fontWeight,
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
        fontSize: SmartTypography.heading3Xl,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
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
        fontSize: SmartTypography.heading2Xl,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
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
        fontSize: SmartTypography.headingXl,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
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
        fontSize: SmartTypography.headingLg,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
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
        fontSize: SmartTypography.heading,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
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
        fontSize: SmartTypography.headingSm,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
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
        fontSize: SmartTypography.headingXs,
        color: color,
        height: height,
        fontWeight: FontWeight.w700,
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
        fontSize: SmartTypography.bodyLg,
        color: color,
        height: height,
        fontWeight: fontWeight,
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
        fontSize: SmartTypography.bodySm,
        color: color,
        height: height,
        fontWeight: fontWeight,
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
        fontSize: SmartTypography.bodyXs,
        color: color,
        height: height,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );
}
