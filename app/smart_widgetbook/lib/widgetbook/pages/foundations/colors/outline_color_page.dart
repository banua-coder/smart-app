import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class OutlineColorPage extends StatelessWidget {
  const OutlineColorPage({
    required this.colorData,
    super.key,
  });

  final ColorData colorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.smartColor.background.neutral.main,
      body: Center(
        child: Container(
          width: 150.w,
          height: 150.h,
          alignment: Alignment.center,
          padding: EdgeInsets.all(SmartDimension.size8.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SmartBorderRadius.md),
            border: Border.all(
              color: colorData.color,
              width: 2.sp,
            ),
            color: Colors.transparent,
          ),
          child: SmartTextBody(
            colorData.token.replaceAll('.', '/'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
