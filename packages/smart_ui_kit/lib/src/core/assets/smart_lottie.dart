import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/core/generated/assets.gen.dart';

@immutable
class SmartLottie {
  final LottieGenImage maintenance;
  final LottieGenImage wifi;

  const SmartLottie._({
    required this.maintenance,
    required this.wifi,
  });

  factory SmartLottie.light() => SmartLottie._(
        maintenance: Assets.lottie.maintenance,
        wifi: Assets.lottie.wifi,
      );

  factory SmartLottie.dark() => SmartLottie._(
        maintenance: Assets.lottie.maintenance,
        wifi: Assets.lottie.wifi,
      );
}
