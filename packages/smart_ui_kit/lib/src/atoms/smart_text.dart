import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/foundations/foundations.dart';

class SmartText extends StatelessWidget {
  const SmartText(
    this.text, {
    super.key,
    this.overflow,
    this.maxLines,
    this.softWrap,
    this.textStyle,
    this.semanticsLabel,
    this.textAlign,
  });

  final String text;
  final int? maxLines;
  final bool? softWrap;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextStyle? textStyle;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: textStyle ??
            SmartTypographyFoundation.body(
              color: context.smartColor.text.neutral.main,
            ),
        overflow: overflow,
        maxLines: maxLines,
        softWrap: softWrap,
        textAlign: textAlign,
        semanticsLabel: semanticsLabel,
      );
}
