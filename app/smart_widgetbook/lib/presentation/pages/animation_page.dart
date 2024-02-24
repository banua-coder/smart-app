import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
        actions: const [
          ThemeSwitcherButton(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(SmartDimension.size16.r),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          crossAxisSpacing: SmartDimension.size16.w,
          mainAxisSpacing: SmartDimension.size16.h,
          children: List.generate(
            SmartAnimations.values.length,
            (index) => Container(
              width: 140.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SmartBorderRadius.md),
                border: Border.all(
                  color: context.smartColor.outline.neutral.main,
                ),
                color: context.smartColor.background.card.main,
              ),
              padding: EdgeInsets.all(SmartDimension.size16.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmartAsset.animation(
                    width: 100.w,
                    height: 100.h,
                    animation: SmartAnimations.values[index],
                    fit: BoxFit.contain,
                  ),
                  Gap(SmartDimension.size8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SmartDimension.size16.w,
                    ),
                    child: SmartTextBodyXs(
                      SmartAnimations.values[index].name,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
