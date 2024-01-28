import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/components/assets/data/smart_asset_data.dart';
import 'package:smart_ui_kit/src/components/assets/enums/smart_asset_type.dart';
import 'package:smart_ui_kit/src/core/generated/assets.gen.dart';

class SmartAsset extends StatelessWidget {
  const SmartAsset._({
    required this.fit,
    required this.asset,
    this.color,
    this.width,
    this.height,
    this.semanticLabel,
    this.repeat = false,
    this.animate = false,
  });

  factory SmartAsset.logo({
    required SmartLogo logo,
    Color? color,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
    String? semanticLabel,
  }) =>
      SmartAsset._(
        asset: logo.data,
        color: color,
        width: width,
        height: height,
        fit: fit,
        semanticLabel: semanticLabel,
      );

  factory SmartAsset.animation({
    required SmartAnimations animation,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
    String? semanticLabel,
    bool repeat = true,
    bool animate = true,
  }) =>
      SmartAsset._(
        asset: animation.data,
        width: width,
        height: height,
        fit: fit,
        semanticLabel: semanticLabel,
        repeat: repeat,
        animate: animate,
      );

  final SmartAssetData<dynamic> asset;
  final Color? color;
  final BoxFit fit;
  final double? width;
  final double? height;
  final String? semanticLabel;
  final bool repeat;
  final bool animate;

  @override
  Widget build(BuildContext context) => switch (asset.type) {
        SmartAssetType.svg => (asset.file(context) as SvgGenImage).svg(
            fit: fit,
            width: width == null ? null : width! * 1.w,
            height: height == null ? null : height! * 1.w,
            colorFilter: color == null && !asset.overrideColor
                ? null
                : ColorFilter.mode(
                    color!,
                    BlendMode.srcIn,
                  ),
            matchTextDirection: true,
            package: asset.packageName,
            semanticsLabel: semanticLabel,
          ),
        SmartAssetType.lottie => (asset.file(context) as LottieGenImage).lottie(
            fit: fit,
            width: width == null ? null : width! * 1.w,
            height: height == null ? null : height! * 1.w,
            repeat: repeat,
            animate: animate,
            package: asset.packageName,
          ),
        _ => const SizedBox.shrink(),
      };
}
