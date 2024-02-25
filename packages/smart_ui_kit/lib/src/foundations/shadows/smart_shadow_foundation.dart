import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/tokens/tokens.dart';

@immutable
class SmartShadowFoundation {
  const SmartShadowFoundation._();

  static List<BoxShadow> card = SmartShadow.card;
  static List<BoxShadow> cardDark = SmartShadow.cardDark;

  static List<BoxShadow> header = SmartShadow.header;
  static List<BoxShadow> headerDark = SmartShadow.headerDark;

  static List<BoxShadow> footer = SmartShadow.footer;
  static List<BoxShadow> footerDark = SmartShadow.footerDark;

  static List<BoxShadow> modal = SmartShadow.modal;
  static List<BoxShadow> modalDark = SmartShadow.modalDark;
}
