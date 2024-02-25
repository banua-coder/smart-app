import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:smart_widgetbook/app.dart';
import 'package:smart_widgetbook/translations/translations.g.dart';
import 'package:smart_widgetbook/widgetbook.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  if (kIsWeb) {
    runApp(const WidgetbookApp());
  } else if (Platform.isAndroid || Platform.isIOS) {
    runApp(const App());
  } else {
    runApp(const WidgetbookApp());
  }
}
