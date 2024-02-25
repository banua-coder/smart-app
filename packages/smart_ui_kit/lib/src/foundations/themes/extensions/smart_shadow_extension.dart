import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/foundations/shadows/smart_shadow_foundation.dart';

class SmartShadowExtension extends ThemeExtension<SmartShadowExtension> {
  const SmartShadowExtension._({
    required this.card,
    required this.header,
    required this.footer,
    required this.modal,
  });

  factory SmartShadowExtension.light() => SmartShadowExtension._(
        card: SmartShadowFoundation.card,
        header: SmartShadowFoundation.header,
        footer: SmartShadowFoundation.footer,
        modal: SmartShadowFoundation.modal,
      );

  factory SmartShadowExtension.dark() => SmartShadowExtension._(
        card: SmartShadowFoundation.cardDark,
        header: SmartShadowFoundation.headerDark,
        footer: SmartShadowFoundation.footerDark,
        modal: SmartShadowFoundation.modalDark,
      );

  final List<BoxShadow> card;
  final List<BoxShadow> header;
  final List<BoxShadow> footer;
  final List<BoxShadow> modal;

  @override
  ThemeExtension<SmartShadowExtension> copyWith({
    List<BoxShadow>? card,
    List<BoxShadow>? header,
    List<BoxShadow>? footer,
    List<BoxShadow>? modal,
  }) =>
      SmartShadowExtension._(
        card: card ?? this.card,
        header: header ?? this.header,
        footer: footer ?? this.footer,
        modal: modal ?? this.modal,
      );

  @override
  ThemeExtension<SmartShadowExtension> lerp(
    covariant ThemeExtension<SmartShadowExtension>? other,
    double t,
  ) {
    if (other is! SmartShadowExtension) {
      return this;
    }

    return other;
  }
}
