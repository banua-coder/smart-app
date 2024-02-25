import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
        actions: const [
          ThemeSwitcherButton(),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.transparent,
        padding: EdgeInsets.all(SmartDimension.size16.r),
        child: Column(
          children: [
            const SmartCard(
              child: Center(
                child: Text('Default'),
              ),
            ),
            Gap(SmartDimension.size16.h),
            SmartCard(
              height: 120.h,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  context.smartColor.outline.color.primary,
                  context.smartColor.background.subtle.primary,
                  context.smartColor.background.card.main,
                ],
                stops: const [0.0, 0.4, 1.0],
              ),
              child: const Center(
                child: Text('Gradient'),
              ),
            ),
            Gap(SmartDimension.size16.h),
            SmartCard(
              height: 120.h,
              bgColor: context.smartColor.background.subtle.primary,
              child: Center(
                child: SmartTextBody(
                  'Custom Color',
                  color: context.smartColor.text.solid.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
