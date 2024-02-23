import 'package:flutter/material.dart';
import 'package:i10n/i10n.dart';

extension TranslationExtension on BuildContext {
  String get thousandSeparator => switch (LocaleSettings.currentLocale) {
        AppLocale.id => '.',
        AppLocale.en => ',',
      };
  String get decimalSeparator => switch (LocaleSettings.currentLocale) {
        AppLocale.id => ',',
        AppLocale.en => '.',
      };
}
