import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:smart_widgetbook/app.dart';
import 'package:smart_widgetbook/widgetbook.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    runApp(const WidgetbookApp());
  } else if (Platform.isAndroid || Platform.isIOS) {
    runApp(const App());
  } else {
    runApp(const WidgetbookApp());
  }
}
