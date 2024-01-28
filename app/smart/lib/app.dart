// ignore_for_file: public_member_api_docs

import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:i10n/i10n.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final _router = SmartRouter();

  @override
  Widget build(BuildContext context) => SmartComponentInit(
        builder: (_) => MaterialApp.router(
          title: 'SmaRT',
          debugShowCheckedModeBanner: false,
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => [
              SmartRouteObserver(),
            ],
          ),
          routeInformationParser: _router.defaultRouteParser(),
          theme: SmartTheme.light(ThemeData.light()).themeData,
          darkTheme: SmartTheme.dark(ThemeData.dark()).themeData,
          locale: LocaleSettings.currentLocale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
        ),
      );
}
