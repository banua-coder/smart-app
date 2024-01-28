import 'package:flutter/material.dart';

@immutable
class ButtonVariantData {
  final Color backgroundColor;
  final Color outlineBgColor;
  final Color borderColor;
  final Color outlineBorderColor;
  final Color foregroundColor;
  final Color outlineFgColor;
  const ButtonVariantData({
    required this.backgroundColor,
    required this.outlineBgColor,
    required this.borderColor,
    required this.outlineBorderColor,
    required this.foregroundColor,
    required this.outlineFgColor,
  });
}
