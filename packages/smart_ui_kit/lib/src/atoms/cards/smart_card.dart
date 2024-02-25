import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

class SmartCard extends StatelessWidget {
  const SmartCard({
    required this.child,
    super.key,
    this.width,
    this.height,
    this.padding,
    this.borderWidth = 1,
    this.bgColor,
    this.borderColor,
    this.gradient,
    this.borderRadius,
    this.onTap,
  }) : assert(
          (gradient == null && bgColor == null) ||
              (gradient != null && bgColor == null) ||
              (bgColor != null && gradient == null),
          'You must either set bgColor or gradient but not both!',
        );

  final Widget child;
  final double? width;
  final double? height;
  final Color? bgColor;
  final Color? borderColor;
  final Gradient? gradient;
  final double borderWidth;
  final EdgeInsets? padding;
  final GestureTapCallback? onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: bgColor != null && gradient == null
              ? bgColor
              : context.smartColor.background.card.main,
          borderRadius: borderRadius ??
              BorderRadius.circular(
                SmartBorderRadius.md,
              ),
          gradient: gradient != null && bgColor == null ? gradient : null,
          border: Border.all(
            color: borderColor ?? context.smartColor.outline.neutral.main,
            width: borderWidth.sp,
          ),
          boxShadow: context.smartShadow.card,
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: borderRadius ??
              BorderRadius.circular(
                SmartBorderRadius.md,
              ),
          child: InkWell(
            onTap: onTap,
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  SmartBorderRadius.md,
                ),
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 300),
              padding: padding ??
                  EdgeInsets.all(
                    SmartDimension.size16.r,
                  ),
              child: child,
            ),
          ),
        ),
      );
}
