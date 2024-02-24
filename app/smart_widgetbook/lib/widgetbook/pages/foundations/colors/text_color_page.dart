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
      backgroundColor: colorData.token.contains('inverse')
          ? context.smartColor.background.neutral.inverse
          : context.smartColor.background.neutral.main,
      body: Center(
        child: SmartTextBody(
          colorData.token.replaceAll('.', '/'),
          color: colorData.color,
        ),
      ),
    );
  }
}
