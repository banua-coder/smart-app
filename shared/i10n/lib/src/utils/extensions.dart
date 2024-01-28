import 'package:flutter/material.dart';
import 'package:i10n/i10n.dart';

extension TranslationExtension on BuildContext {
  Translations get i10n => Translations.of(this);
}
