import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

class SmartColorExtension extends ThemeExtension<SmartColorExtension> {
  const SmartColorExtension._({
    required this.background,
    required this.text,
    required this.icon,
    required this.action,
    required this.outline,
    required this.overlay,
  });

  final SmartBackgroundColor background;
  final SmartTextColor text;
  final SmartIconColor icon;
  final SmartActionColor action;
  final SmartOutlineColor outline;
  final Color overlay;

  factory SmartColorExtension.light() => SmartColorExtension._(
        background: SmartBackgroundColor.light(),
        text: SmartTextColor.light(),
        icon: SmartIconColor.light(),
        action: SmartActionColor.create(),
        outline: SmartOutlineColor.light(),
        overlay: Colors.black.withOpacity(0.25),
      );
  factory SmartColorExtension.dark() => SmartColorExtension._(
        background: SmartBackgroundColor.dark(),
        text: SmartTextColor.dark(),
        icon: SmartIconColor.dark(),
        action: SmartActionColor.create(),
        outline: SmartOutlineColor.dark(),
        overlay: Colors.black.withOpacity(0.75),
      );

  @override
  ThemeExtension<SmartColorExtension> lerp(
    covariant ThemeExtension<SmartColorExtension>? other,
    double t,
  ) {
    if (other is! SmartColorExtension) {
      return this;
    }

    return other;
  }

  @override
  ThemeExtension<SmartColorExtension> copyWith({
    SmartBackgroundColor? background,
    SmartTextColor? text,
    SmartIconColor? icon,
    SmartActionColor? action,
    SmartOutlineColor? outline,
    Color? overlay,
  }) =>
      SmartColorExtension._(
        background: background ?? this.background,
        text: text ?? this.text,
        icon: icon ?? this.icon,
        action: action ?? this.action,
        outline: outline ?? this.outline,
        overlay: overlay ?? this.overlay,
      );
}
