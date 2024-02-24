import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/core/assets/assets.dart';

class SmartAssetExtension extends ThemeExtension<SmartAssetExtension> {
  const SmartAssetExtension._({
    required this.svg,
    required this.animation,
  });

  final SmartSvg svg;
  final SmartLottie animation;

  factory SmartAssetExtension.light() => SmartAssetExtension._(
        svg: SmartSvg.light(),
        animation: SmartLottie.light(),
      );

  factory SmartAssetExtension.dark() => SmartAssetExtension._(
        svg: SmartSvg.dark(),
        animation: SmartLottie.dark(),
      );

  @override
  ThemeExtension<SmartAssetExtension> lerp(
    covariant ThemeExtension<SmartAssetExtension>? other,
    double t,
  ) {
    if (other is! SmartAssetExtension) {
      return this;
    }

    return other;
  }

  @override
  ThemeExtension<SmartAssetExtension> copyWith({
    SmartSvg? svg,
    SmartLottie? animation,
  }) =>
      SmartAssetExtension._(
        svg: svg ?? this.svg,
        animation: animation ?? this.animation,
      );
}
