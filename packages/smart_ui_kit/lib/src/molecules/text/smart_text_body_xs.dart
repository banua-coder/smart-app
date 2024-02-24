import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/foundations/foundations.dart';
import 'package:smart_ui_kit/src/molecules/text/base_smart_text_variant.dart';

class SmartTextBodyXs extends BaseSmartTextVariant {
  const SmartTextBodyXs(
    super.text, {
    super.key,
    super.color,
    super.height,
    super.overflow,
    super.softWrap,
    super.maxLines,
    super.textAlign,
    super.decoration,
    super.fontWeight,
    super.wordSpacing,
    super.letterSpacing,
    super.semanticsLabel,
  });

  @override
  TextStyle get textStyle => SmartTypographyFoundation.bodyXs(
        color: color,
        decoration: decoration,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      );
}
