import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/core/generated/assets.gen.dart';

@immutable
class SmartLottie {
  final LottieGenImage maintenance;

  const SmartLottie._({
    required this.maintenance,
  });

  factory SmartLottie.light() => SmartLottie._(
        maintenance: Assets.lottie.maintenance,
      );

  factory SmartLottie.dark() => SmartLottie._(
        maintenance: Assets.lottie.maintenance,
      );
}
