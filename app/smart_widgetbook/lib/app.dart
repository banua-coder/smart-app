import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => SmartComponentInit(
        builder: (_) => ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
          child: Consumer<ThemeProvider>(
            builder: (_, themeState, __) {
              return MaterialApp(
                title: 'Smart UI KIT',
                theme: SmartTheme.light(ThemeData.light()).themeData,
                darkTheme: SmartTheme.dark(ThemeData.dark()).themeData,
                themeMode: themeState.themeMode,
                home: const HomePage(),
              );
            },
          ),
        ),
      );
}
