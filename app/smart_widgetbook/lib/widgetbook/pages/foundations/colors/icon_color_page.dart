import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class IconColorPage extends StatelessWidget {
  const IconColorPage({
    required this.colorData,
    super.key,
  });

  final ColorData colorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorData.token.contains('inverse')
          ? context.smartColor.background.neutral.inverse
          : context.smartColor.background.neutral.main,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home_rounded,
              size: 24.sp,
              color: colorData.color,
            ),
            Gap(SmartDimension.size12.w),
            SmartTextBody(
              colorData.token.replaceAll('.', '/'),
              color: colorData.color,
            ),
          ],
        ),
      ),
    );
  }
}
