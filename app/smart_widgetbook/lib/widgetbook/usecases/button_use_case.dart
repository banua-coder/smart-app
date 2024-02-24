import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/widgetbook/pages/pages.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Primary',
  type: SmartButton,
)
Widget primaryButtonUseCase(BuildContext context) => ButtonPage(
      label: context.knobs.string(
        label: 'Label',
        description: 'Label to show on button',
        initialValue: 'Button',
      ),
      size: context.knobs.list(
        label: 'Button Size',
        description: 'Size of the button from SmartButtonSize enum.',
        options: SmartButtonSize.values,
        initialOption: SmartButtonSize.md,
      ),
      type: context.knobs.list(
        label: 'Button Type',
        description: 'Type of the button from SmartButtonType enum.',
        options: SmartButtonType.values,
        initialOption: SmartButtonType.filled,
      ),
      enable: context.knobs.boolean(
        label: 'Enable',
        description: 'Set whether to enable button or not.',
        initialValue: true,
      ),
      debounce: context.knobs.boolean(
        label: 'Debounce',
        description: 'Set whether to debounce button click or not.',
        initialValue: true,
      ),
    );

@UseCase(
  name: 'Secondary',
  type: SmartButton,
)
Widget secondaryButtonUseCase(BuildContext context) => ButtonPage(
      label: context.knobs.string(
        label: 'Label',
        description: 'Label to show on button',
        initialValue: 'Button',
      ),
      size: context.knobs.list(
        label: 'Button Size',
        description: 'Size of the button from SmartButtonSize enum.',
        options: SmartButtonSize.values,
        initialOption: SmartButtonSize.md,
      ),
      type: context.knobs.list(
        label: 'Button Type',
        description: 'Type of the button from SmartButtonType enum.',
        options: SmartButtonType.values,
        initialOption: SmartButtonType.filled,
      ),
      variant: SmartButtonVariant.secondary,
      enable: context.knobs.boolean(
        label: 'Enable',
        description: 'Set whether to enable button or not.',
        initialValue: true,
      ),
      debounce: context.knobs.boolean(
        label: 'Debounce',
        description: 'Set whether to debounce button click or not.',
        initialValue: true,
      ),
    );

@UseCase(
  name: 'Tertiary',
  type: SmartButton,
)
Widget tertiaryButtonUseCase(BuildContext context) => ButtonPage(
      label: context.knobs.string(
        label: 'Label',
        description: 'Label to show on button',
        initialValue: 'Button',
      ),
      size: context.knobs.list(
        label: 'Button Size',
        description: 'Size of the button from SmartButtonSize enum.',
        options: SmartButtonSize.values,
        initialOption: SmartButtonSize.md,
      ),
      type: context.knobs.list(
        label: 'Button Type',
        description: 'Type of the button from SmartButtonType enum.',
        options: SmartButtonType.values,
        initialOption: SmartButtonType.filled,
      ),
      variant: SmartButtonVariant.tertiary,
      enable: context.knobs.boolean(
        label: 'Enable',
        description: 'Set whether to enable button or not.',
        initialValue: true,
      ),
      debounce: context.knobs.boolean(
        label: 'Debounce',
        description: 'Set whether to debounce button click or not.',
        initialValue: true,
      ),
    );

@UseCase(
  name: 'Danger',
  type: SmartButton,
)
Widget dangerButtonUseCase(BuildContext context) => ButtonPage(
      label: context.knobs.string(
        label: 'Label',
        description: 'Label to show on button',
        initialValue: 'Button',
      ),
      size: context.knobs.list(
        label: 'Button Size',
        description: 'Size of the button from SmartButtonSize enum.',
        options: SmartButtonSize.values,
        initialOption: SmartButtonSize.md,
      ),
      type: context.knobs.list(
        label: 'Button Type',
        description: 'Type of the button from SmartButtonType enum.',
        options: SmartButtonType.values,
        initialOption: SmartButtonType.filled,
      ),
      variant: SmartButtonVariant.danger,
      enable: context.knobs.boolean(
        label: 'Enable',
        description: 'Set whether to enable button or not.',
        initialValue: true,
      ),
      debounce: context.knobs.boolean(
        label: 'Debounce',
        description: 'Set whether to debounce button click or not.',
        initialValue: true,
      ),
    );
