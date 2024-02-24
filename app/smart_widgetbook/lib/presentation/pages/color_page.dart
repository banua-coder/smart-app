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
          _ColorItem(
            name: 'background.neutral.white',
            color: context.smartColor.background.neutral.white,
          ),
          _ColorItem(
            name: 'background.neutral.strong',
            color: context.smartColor.background.neutral.strong,
          ),
          _ColorItem(
            name: 'background.neutral.subtle',
            color: context.smartColor.background.neutral.subtle,
          ),
          _ColorItem(
            name: 'background.neutral.inverse',
            textColor: context.smartColor.text.neutral.inverse,
            color: context.smartColor.background.neutral.inverse,
          ),
          _ColorItem(
            name: 'background.solid.primary',
            textColor: Colors.white,
            color: context.smartColor.background.solid.primary,
          ),
          _ColorItem(
            name: 'background.solid.secondary',
            textColor: Colors.white,
            color: context.smartColor.background.solid.secondary,
          ),
          _ColorItem(
            name: 'background.solid.gray',
            textColor: Colors.white,
            color: context.smartColor.background.solid.gray,
          ),
          _ColorItem(
            name: 'background.solid.info',
            textColor: Colors.white,
            color: context.smartColor.background.solid.info,
          ),
          _ColorItem(
            name: 'background.solid.error',
            textColor: Colors.white,
            color: context.smartColor.background.solid.error,
          ),
          _ColorItem(
            name: 'background.solid.warning',
            color: context.smartColor.background.solid.warning,
          ),
          _ColorItem(
            name: 'background.solid.success',
            textColor: Colors.white,
            color: context.smartColor.background.solid.success,
          ),
          _ColorItem(
            name: 'background.subtle.primary',
            color: context.smartColor.background.subtle.primary,
          ),
          _ColorItem(
            name: 'background.subtle.secondary',
            color: context.smartColor.background.subtle.secondary,
          ),
          _ColorItem(
            name: 'background.subtle.gray',
            color: context.smartColor.background.subtle.gray,
          ),
          _ColorItem(
            name: 'background.subtle.info',
            color: context.smartColor.background.subtle.info,
          ),
          _ColorItem(
            name: 'background.subtle.error',
            color: context.smartColor.background.subtle.error,
          ),
          _ColorItem(
            name: 'background.subtle.warning',
            color: context.smartColor.background.subtle.warning,
          ),
          _ColorItem(
            name: 'background.subtle.success',
            color: context.smartColor.background.subtle.success,
          ),
          _ColorItem(
            name: 'text.neutral.main',
            textColor: context.smartColor.text.neutral.inverse,
            color: context.smartColor.text.neutral.main,
          ),
          _ColorItem(
            name: 'text.neutral.subtle',
            textColor: context.smartColor.text.neutral.inverse,
            color: context.smartColor.text.neutral.subtle,
          ),
          _ColorItem(
            name: 'text.neutral.strong',
            textColor: context.smartColor.text.neutral.inverse,
            color: context.smartColor.text.neutral.strong,
          ),
          _ColorItem(
            name: 'text.neutral.inverse',
            textColor: context.smartColor.text.neutral.main,
            color: context.smartColor.text.neutral.inverse,
          ),
          _ColorItem(
            name: 'text.neutral.disabled',
            textColor: Colors.white,
            color: context.smartColor.text.neutral.disabled,
          ),
          _ColorItem(
            name: 'text.solid.primary',
            textColor: Colors.white,
            color: context.smartColor.text.solid.primary,
          ),
          _ColorItem(
            name: 'text.solid.secondary',
            textColor: Colors.white,
            color: context.smartColor.text.solid.secondary,
          ),
          _ColorItem(
            name: 'text.solid.info',
            textColor: Colors.white,
            color: context.smartColor.text.solid.info,
          ),
          _ColorItem(
            name: 'text.solid.gray',
            textColor: Colors.white,
            color: context.smartColor.text.solid.gray,
          ),
          _ColorItem(
            name: 'text.solid.error',
            textColor: Colors.white,
            color: context.smartColor.text.solid.error,
          ),
          _ColorItem(
            name: 'text.solid.warning',
            textColor: Colors.white,
            color: context.smartColor.text.solid.warning,
          ),
          _ColorItem(
            name: 'text.solid.success',
            textColor: Colors.white,
            color: context.smartColor.text.solid.success,
          ),
          _ColorItem(
            name: 'icon.neutral.main',
            textColor: context.smartColor.text.neutral.inverse,
            color: context.smartColor.icon.neutral.main,
          ),
          _ColorItem(
            name: 'icon.neutral.subtle',
            textColor: context.smartColor.text.neutral.inverse,
            color: context.smartColor.icon.neutral.subtle,
          ),
          _ColorItem(
            name: 'icon.neutral.strong',
            textColor: context.smartColor.text.neutral.inverse,
            color: context.smartColor.icon.neutral.strong,
          ),
          _ColorItem(
            name: 'icon.neutral.inverse',
            textColor: context.smartColor.text.neutral.main,
            color: context.smartColor.icon.neutral.inverse,
          ),
          _ColorItem(
            name: 'icon.neutral.disabled',
            textColor: Colors.white,
            color: context.smartColor.icon.neutral.disabled,
          ),
          _ColorItem(
            name: 'text.solid.primary',
            textColor: Colors.white,
            color: context.smartColor.text.solid.primary,
          ),
          _ColorItem(
            name: 'icon.solid.secondary',
            textColor: Colors.white,
            color: context.smartColor.icon.solid.secondary,
          ),
          _ColorItem(
            name: 'icon.solid.info',
            textColor: Colors.white,
            color: context.smartColor.icon.solid.info,
          ),
          _ColorItem(
            name: 'icon.solid.gray',
            textColor: Colors.white,
            color: context.smartColor.icon.solid.gray,
          ),
          _ColorItem(
            name: 'icon.solid.error',
            textColor: Colors.white,
            color: context.smartColor.icon.solid.error,
          ),
          _ColorItem(
            name: 'icon.solid.warning',
            textColor: Colors.white,
            color: context.smartColor.icon.solid.warning,
          ),
          _ColorItem(
            name: 'icon.solid.success',
            textColor: Colors.white,
            color: context.smartColor.icon.solid.success,
          ),
          _ColorItem(
            name: 'outline.neutral.main',
            textColor: context.smartColor.text.neutral.main,
            color: context.smartColor.outline.neutral.main,
          ),
          _ColorItem(
            name: 'outline.neutral.strong',
            textColor: context.smartColor.text.neutral.main,
            color: context.smartColor.outline.neutral.strong,
          ),
          _ColorItem(
            name: 'outline.neutral.subtle',
            textColor: context.smartColor.text.neutral.main,
            color: context.smartColor.outline.neutral.subtle,
          ),
          _ColorItem(
            name: 'overlay',
            textColor: context.smartColor.text.neutral.main,
            color: context.smartColor.overlay,
          ),
          _ColorItem(
            name: 'action.primary',
            textColor: Colors.white,
            color: context.smartColor.action.primary,
          ),
          _ColorItem(
            name: 'action.secondary',
            textColor: Colors.white,
            color: context.smartColor.action.secondary,
          ),
          _ColorItem(
            name: 'action.info',
            textColor: Colors.white,
            color: context.smartColor.action.info,
          ),
          _ColorItem(
            name: 'action.gray',
            textColor: Colors.white,
            color: context.smartColor.action.gray,
          ),
          _ColorItem(
            name: 'action.warning',
            textColor: Colors.white,
            color: context.smartColor.action.warning,
          ),
          _ColorItem(
            name: 'action.error',
            textColor: Colors.white,
            color: context.smartColor.action.error,
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
