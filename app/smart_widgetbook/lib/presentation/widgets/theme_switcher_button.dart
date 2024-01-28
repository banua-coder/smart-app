import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class ThemeSwitcherButton extends StatelessWidget {
  const ThemeSwitcherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        final provider = context.read<ThemeProvider>();
        provider.isDark = !provider.isDark;
      },
      icon: Consumer<ThemeProvider>(
        builder: (_, themeState, __) => Icon(
          themeState.themeMode == ThemeMode.dark
              ? Icons.light_mode_rounded
              : Icons.dark_mode_rounded,
          color: context.smartColor.icon.neutral.main,
        ),
      ),
    );
  }
}
