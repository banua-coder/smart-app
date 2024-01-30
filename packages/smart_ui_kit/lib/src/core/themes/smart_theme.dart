import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_ui_kit/src/core/core.dart';
import 'package:smart_ui_kit/src/core/styles/colors/colors.dart';
import 'package:smart_ui_kit/src/core/themes/extensions/smart_asset_extension.dart';
import 'package:smart_ui_kit/src/core/themes/extensions/smart_color_extension.dart';

@immutable
class SmartTheme {
  final ThemeData themeData;

  const SmartTheme._(this.themeData);

  factory SmartTheme.light(ThemeData themeData) {
    final data = themeData.copyWith(
      scaffoldBackgroundColor: SmartColors.bgMain,
      appBarTheme: AppBarTheme(
        backgroundColor: SmartColors.bgMain,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
      ),
    );

    final finalData = _buildThemeData(
      themeData: data,
      extensions: [
        SmartAssetExtension.light(),
        SmartColorExtension.light(),
      ],
      brightness: Brightness.light,
    );

    return SmartTheme._(finalData);
  }

  factory SmartTheme.dark(ThemeData themeData) {
    final data = themeData.copyWith(
      scaffoldBackgroundColor: SmartColors.bgMainDark,
      appBarTheme: AppBarTheme(
        backgroundColor: SmartColors.bgMainDark,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
      ),
    );

    final finalData = _buildThemeData(
      themeData: data,
      extensions: [
        SmartAssetExtension.dark(),
        SmartColorExtension.dark(),
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
          displaySmall: SmartTextStyle.heading3Xl(
            color: themeData.textTheme.displaySmall?.color,
          ),
          headlineLarge: SmartTextStyle.heading2Xl(
            color: themeData.textTheme.headlineLarge?.color,
          ),
          headlineMedium: SmartTextStyle.headingXl(
            color: themeData.textTheme.headlineMedium?.color,
          ),
          headlineSmall: SmartTextStyle.headingLg(
            color: themeData.textTheme.headlineSmall?.color,
          ),
          titleLarge: SmartTextStyle.heading(
            color: themeData.textTheme.titleLarge?.color,
          ),
          titleMedium: SmartTextStyle.headingSm(
            color: themeData.textTheme.titleMedium?.color,
          ),
          titleSmall: SmartTextStyle.headingXs(
            color: themeData.textTheme.titleSmall?.color,
          ),
          labelLarge: SmartTextStyle.bodyLg(
            fontWeight: FontWeight.w700,
            color: themeData.textTheme.labelLarge?.color,
          ),
          labelMedium: SmartTextStyle.body(
            fontWeight: FontWeight.w700,
            color: themeData.textTheme.labelMedium?.color,
          ),
          labelSmall: SmartTextStyle.bodySm(
            fontWeight: FontWeight.w700,
            color: themeData.textTheme.labelSmall?.color,
          ),
          bodyLarge: SmartTextStyle.bodyLg(
            color: themeData.textTheme.bodyLarge?.color,
          ),
          bodyMedium: SmartTextStyle.body(
            color: themeData.textTheme.bodyMedium?.color,
          ),
          bodySmall: SmartTextStyle.body(
            color: themeData.textTheme.bodySmall?.color,
          ),
        ),
      );
}
