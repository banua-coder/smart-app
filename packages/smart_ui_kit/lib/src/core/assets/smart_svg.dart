import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/core/generated/assets.gen.dart';

@immutable
class SmartSvg {
  final SvgGenImage logo;

  const SmartSvg._({
    required this.logo,
  });

  factory SmartSvg.light() => SmartSvg._(
        logo: Assets.svg.logo.logo,
      );
  factory SmartSvg.dark() => SmartSvg._(
        logo: Assets.svg.logo.logoDark,
      );
}
