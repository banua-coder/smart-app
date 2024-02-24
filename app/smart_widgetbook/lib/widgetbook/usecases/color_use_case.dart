import 'package:flutter/material.dart';
import 'package:smart_widgetbook/smart_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Actions',
  type: Widget,
)
Widget actionUseCase(BuildContext context) => BackgroundColorPage(
      colorData: context.knobs.list<ColorData>(
        label: 'Available Color',
        description: 'Available color from design system',
        labelBuilder: (value) => value.token.replaceAll('.', '/'),
        options: getColors(context)
            .where(
              (element) => element.colorType == ColorType.action,
            )
            .toList(),
      ),
    );

@UseCase(
  name: 'Background',
  type: Widget,
)
Widget backgroundUseCase(BuildContext context) => BackgroundColorPage(
      colorData: context.knobs.list<ColorData>(
        label: 'Available Color',
        description: 'Available color from design system',
        labelBuilder: (value) => value.token.replaceAll('.', '/'),
        options: getColors(context)
            .where(
              (element) => element.colorType == ColorType.background,
            )
            .toList(),
      ),
    );

@UseCase(
  name: 'Icon',
  type: Widget,
)
Widget iconUseCase(BuildContext context) => IconColorPage(
      colorData: context.knobs.list<ColorData>(
        label: 'Available Color',
        description: 'Available color from design system',
        labelBuilder: (value) => value.token.replaceAll('.', '/'),
        options: getColors(context)
            .where(
              (element) => element.colorType == ColorType.icon,
            )
            .toList(),
      ),
    );

@UseCase(
  name: 'Outline',
  type: Widget,
)
Widget outlineUseCase(BuildContext context) => OutlineColorPage(
      colorData: context.knobs.list<ColorData>(
        label: 'Available Color',
        description: 'Available color from design system',
        labelBuilder: (value) => value.token.replaceAll('.', '/'),
        options: getColors(context)
            .where(
              (element) => element.colorType == ColorType.outline,
            )
            .toList(),
      ),
    );

@UseCase(
  name: 'Overlay',
  type: Widget,
)
Widget overlayUseCase(BuildContext context) => OverlayColorPage(
      colorData: context.knobs.list<ColorData>(
        label: 'Available Color',
        description: 'Available color from design system',
        labelBuilder: (value) => value.token.replaceAll('.', '/'),
        options: getColors(context)
            .where(
              (element) => element.colorType == ColorType.overlay,
            )
            .toList(),
      ),
    );

@UseCase(
  name: 'Text',
  type: Widget,
)
Widget textUseCase(BuildContext context) => TextColorPage(
      colorData: context.knobs.list<ColorData>(
        label: 'Available Color',
        description: 'Available color from design system',
        labelBuilder: (value) => value.token.replaceAll('.', '/'),
        options: getColors(context)
            .where(
              (element) => element.colorType == ColorType.text,
            )
            .toList(),
      ),
    );
