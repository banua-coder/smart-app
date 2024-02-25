import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/foundations/foundations.dart';

extension BuildContextX on BuildContext {
  ThemeExtension<SmartColorExtension> get _colorExtension =>
      Theme.of(this).extension<SmartColorExtension>()!;
  ThemeExtension<SmartShadowExtension> get _shadowExtension =>
      Theme.of(this).extension<SmartShadowExtension>()!;

  SmartColorExtension get smartColor => _colorExtension as SmartColorExtension;
  SmartShadowExtension get smartShadow =>
      _shadowExtension as SmartShadowExtension;

  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
}
