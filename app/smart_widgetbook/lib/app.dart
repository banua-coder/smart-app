import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => TranslationProvider(
        child: SmartComponentInit(
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
                  locale: LocaleSettings.currentLocale.flutterLocale,
                  supportedLocales: AppLocaleUtils.supportedLocales,
                  localizationsDelegates: GlobalMaterialLocalizations.delegates,
                );
              },
            ),
          ),
        ),
      );
}
