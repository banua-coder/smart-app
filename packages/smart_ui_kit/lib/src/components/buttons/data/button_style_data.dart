import 'package:flutter/material.dart';

@immutable
class ButtonStyleData {
  final Color disabledBgColor;
  final Color disabledFgColor;
  final Color disabledBorderColor;
  const ButtonStyleData({
    required this.disabledBgColor,
    required this.disabledFgColor,
    required this.disabledBorderColor,
  });
}
