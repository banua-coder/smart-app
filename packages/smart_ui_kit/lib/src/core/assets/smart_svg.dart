import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/core/generated/assets.gen.dart';

@immutable
class SmartSvg {
  final SvgGenImage banuaCoder;
  final SvgGenImage smart;

  const SmartSvg._({
    required this.banuaCoder,
    required this.smart,
  });

  factory SmartSvg.light() => SmartSvg._(
        banuaCoder: Assets.svg.logo.banuaCoder,
        smart: Assets.svg.logo.smart,
      );
  factory SmartSvg.dark() => SmartSvg._(
        banuaCoder: Assets.svg.logo.banuaCoderDark,
        smart: Assets.svg.logo.smartDark,
      );
}
