import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logo'),
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
            SmartLogo.values.length,
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
                  SmartAsset.logo(
                    width: 100.w,
                    height: 100.h,
                    logo: SmartLogo.values[index],
                    fit: BoxFit.contain,
                  ),
                  SelectableText(
                    SmartLogo.values[index].name,
                    style: SmartTextStyle.bodyXs(
                      fontWeight: FontWeight.bold,
                      color: context.smartColor.text.neutral.subtle,
                    ),
                    textAlign: TextAlign.center,
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
