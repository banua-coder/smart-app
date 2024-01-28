import 'dart:async';
import 'dart:developer';

import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:i10n/i10n.dart';
import 'package:smart/error_app.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

void bootstrap(FutureOr<Widget> Function() builder) {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(
    () async {
      await configureDependencies();
      LocaleSettings.useDeviceLocale();
      FlutterError.onError = (details) {
        getIt<Log>().console(
          details.exceptionAsString(),
          stackTrace: details.stack,
          type: LogType.fatal,
        );
      };

      Bloc.observer = const AppBlocObserver();
      runApp(await builder());
    },
    (error, stack) {
      getIt<Log>().console(
        error.toString(),
        stackTrace: stack,
        type: LogType.fatal,
      );
      runApp(
        TranslationProvider(
          child: const ErrorApp(),
        ),
      );
    },
  );
}
