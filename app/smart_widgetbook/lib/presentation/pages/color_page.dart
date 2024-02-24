import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        actions: const [ThemeSwitcherButton()],
      ),
      body: ListView.builder(
        itemCount: getColors(context).length,
        itemBuilder: (context, index) {
          final color = getColors(context)[index];
          return _ColorItem(
            name: color.token,
            color: color.color,
            textColor: color.textColor,
          );
        },
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  const _ColorItem({
    required this.name,
    required this.color,
    this.textColor,
  });

  final String name;
  final Color color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) => Container(
        width: 1.sw,
        height: 48.h,
        color: color,
        child: Center(
          child: Text(
            '$name - $color',
            style: SmartTextStyle.body(
              color: textColor ?? context.smartColor.text.neutral.main,
            ),
          ),
        ),
      );
}
