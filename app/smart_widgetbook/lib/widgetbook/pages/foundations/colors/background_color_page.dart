import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class BackgroundColorPage extends StatelessWidget {
  const BackgroundColorPage({
    required this.colorData,
    super.key,
  });

  final ColorData colorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 160.w,
          height: 160.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SmartBorderRadius.md),
            color: colorData.color,
            border: Border.all(
              color: context.smartColor.outline.neutral.main,
            ),
          ),
          child: Text(
            colorData.token.replaceAll('.', '/'),
            style: SmartTextStyle.body(
              color: colorData.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
