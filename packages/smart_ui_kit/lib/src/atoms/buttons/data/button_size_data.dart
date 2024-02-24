import 'package:flutter/material.dart';

@immutable
class ButtonSizeData {
  final EdgeInsets padding;
  final double borderRadius;
  final TextStyle textStyle;
  final double width;
  final double height;
  const ButtonSizeData({
    required this.padding,
    required this.borderRadius,
    required this.textStyle,
    required this.width,
    required this.height,
  });
}
