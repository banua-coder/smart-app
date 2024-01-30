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
      body: ListView(
        children: [
          _ColorItem(
            name: 'background.card.main',
            color: context.smartColor.background.card.main,
          ),
          _ColorItem(
            name: 'background.card.secondary',
            color: context.smartColor.background.card.secondary,
          ),
          _ColorItem(
            name: 'background.neutral.main',
            color: context.smartColor.background.neutral.main,
          ),
        ],
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  const _ColorItem({
    required this.name,
    required this.color,
  });

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
        width: 1.sw,
        height: 48.h,
        color: color,
        child: Center(
          child: Text(
            '$name- $color',
          ),
        ),
      );
}
