import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/foundations/foundations.dart';

class BaseSmartTextVariant extends StatelessWidget {
  const BaseSmartTextVariant(
    this.text, {
    super.key,
    this.color,
    this.height,
    this.overflow,
    this.maxLines,
    this.softWrap,
    this.decoration,
    this.fontWeight,
    this.wordSpacing,
    this.letterSpacing,
    this.semanticsLabel,
    this.textAlign,
  });

  final String text;
  final Color? color;
  final int? maxLines;
  final bool? softWrap;
  final double? height;
  final double? wordSpacing;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final String? semanticsLabel;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) => SmartText(
        text,
        textStyle: textStyle,
        overflow: overflow,
        maxLines: maxLines,
        softWrap: softWrap,
        textAlign: textAlign,
        semanticsLabel: semanticsLabel,
      );

  TextStyle get textStyle => SmartTypographyFoundation.body(
        color: color,
        decoration: decoration,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      );
}
