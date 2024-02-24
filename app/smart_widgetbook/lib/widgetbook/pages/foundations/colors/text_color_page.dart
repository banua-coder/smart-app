import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class TextColorPage extends StatelessWidget {
  const TextColorPage({
    required this.colorData,
    super.key,
  });

  final ColorData colorData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.smartColor.background.neutral.main,
      body: Center(
        child: Text(
          colorData.token.replaceAll('.', '/'),
          style: SmartTextStyle.body(
            color: colorData.color,
          ),
        ),
      ),
    );
  }
}
