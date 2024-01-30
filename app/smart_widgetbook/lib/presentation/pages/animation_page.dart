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
        padding: EdgeInsets.all(SmartDimension.r16),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          crossAxisSpacing: SmartDimension.h16,
          mainAxisSpacing: SmartDimension.v16,
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
              padding: EdgeInsets.all(SmartDimension.r16),
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
                  Gap(SmartDimension.v8),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: SmartDimension.h16,
                    ),
                    child: SelectableText(
                      SmartAnimations.values[index].name,
                      style: SmartTextStyle.bodyXs(
                        fontWeight: FontWeight.bold,
                        color: context.smartColor.text.neutral.subtle,
                      ),
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
