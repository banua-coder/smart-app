import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

class SmartTextStyle {
  const SmartTextStyle._();

  static TextStyle _base({
    double fontSize = 14,
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
        fontSize: 48,
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
        fontSize: 40,
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
        fontSize: 32,
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
        fontSize: 24,
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
        fontSize: 20,
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
        fontSize: 18,
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
        fontSize: 16,
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
        fontSize: 16,
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
        fontSize: 12,
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
        fontSize: 10,
        color: color,
        height: height,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      );
}
