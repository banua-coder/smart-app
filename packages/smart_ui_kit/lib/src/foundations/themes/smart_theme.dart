import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ui_kit/src/foundations/foundations.dart';

@immutable
class SmartTheme {
  final ThemeData themeData;

  const SmartTheme._(this.themeData);

  factory SmartTheme.light(ThemeData themeData) {
    final data = themeData.copyWith(
      scaffoldBackgroundColor: SmartColorFoundation.bgMain,
      appBarTheme: AppBarTheme(
        backgroundColor: SmartColorFoundation.bgMain,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
      ),
    );

    final finalData = _buildThemeData(
      themeData: data,
      extensions: [
        SmartAssetExtension.light(),
        SmartColorExtension.light(),
        SmartShadowExtension.light(),
      ],
      brightness: Brightness.light,
    );

    return SmartTheme._(finalData);
  }

  factory SmartTheme.dark(ThemeData themeData) {
    final data = themeData.copyWith(
      scaffoldBackgroundColor: SmartColorFoundation.bgMainDark,
      appBarTheme: AppBarTheme(
        backgroundColor: SmartColorFoundation.bgMainDark,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
      ),
    );

    final finalData = _buildThemeData(
      themeData: data,
      extensions: [
        SmartAssetExtension.dark(),
        SmartColorExtension.dark(),
        SmartShadowExtension.dark(),
      ],
      brightness: Brightness.dark,
    );

    return SmartTheme._(finalData);
  }

  static ThemeData _buildThemeData({
    required ThemeData themeData,
    required List<ThemeExtension> extensions,
    required Brightness brightness,
  }) =>
      themeData.copyWith(
        brightness: brightness,
        extensions: extensions,
        textTheme: GoogleFonts.manropeTextTheme(themeData.textTheme).copyWith(
          displaySmall: SmartTypographyFoundation.heading3Xl(
            color: themeData.textTheme.displaySmall?.color,
          ),
          headlineLarge: SmartTypographyFoundation.heading2Xl(
            color: themeData.textTheme.headlineLarge?.color,
          ),
          headlineMedium: SmartTypographyFoundation.headingXl(
            color: themeData.textTheme.headlineMedium?.color,
          ),
          headlineSmall: SmartTypographyFoundation.headingLg(
            color: themeData.textTheme.headlineSmall?.color,
          ),
          titleLarge: SmartTypographyFoundation.heading(
            color: themeData.textTheme.titleLarge?.color,
          ),
          titleMedium: SmartTypographyFoundation.headingSm(
            color: themeData.textTheme.titleMedium?.color,
          ),
          titleSmall: SmartTypographyFoundation.headingXs(
            color: themeData.textTheme.titleSmall?.color,
          ),
          labelLarge: SmartTypographyFoundation.bodyLg(
            fontWeight: FontWeight.w700,
            color: themeData.textTheme.labelLarge?.color,
          ),
          labelMedium: SmartTypographyFoundation.body(
            fontWeight: FontWeight.w700,
            color: themeData.textTheme.labelMedium?.color,
          ),
          labelSmall: SmartTypographyFoundation.bodySm(
            fontWeight: FontWeight.w700,
            color: themeData.textTheme.labelSmall?.color,
          ),
          bodyLarge: SmartTypographyFoundation.bodyLg(
            color: themeData.textTheme.bodyLarge?.color,
          ),
          bodyMedium: SmartTypographyFoundation.body(
            color: themeData.textTheme.bodyMedium?.color,
          ),
          bodySmall: SmartTypographyFoundation.body(
            color: themeData.textTheme.bodySmall?.color,
          ),
        ),
      );
}
