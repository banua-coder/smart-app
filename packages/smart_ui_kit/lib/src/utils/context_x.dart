import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/core/themes/extensions/smart_color_extension.dart';

extension BuildContextX on BuildContext {
  ThemeExtension<SmartColorExtension> get _colorExtension =>
      Theme.of(this).extension<SmartColorExtension>()!;

  SmartColorExtension get smartColor => _colorExtension as SmartColorExtension;
}
