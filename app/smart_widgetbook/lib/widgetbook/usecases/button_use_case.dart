import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_widgetbook/widgetbook/pages/pages.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Primary',
  type: SmartButton,
)
Widget primaryButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      SmartButtonVariant.primary,
    );

@UseCase(
  name: 'Secondary',
  type: SmartButton,
)
Widget secondaryButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      SmartButtonVariant.secondary,
    );

@UseCase(
  name: 'Tertiary',
  type: SmartButton,
)
Widget tertiaryButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      SmartButtonVariant.tertiary,
    );

@UseCase(
  name: 'Danger',
  type: SmartButton,
)
Widget dangerButtonUseCase(BuildContext context) => _buildButtonUseCase(
      context,
      SmartButtonVariant.danger,
    );

Widget _buildButtonUseCase(
  BuildContext context,
  SmartButtonVariant variant,
) =>
    ButtonPage(
      label: context.knobs.string(
        label: 'Label',
        description: 'Label to show on button',
        initialValue: 'Button',
      ),
      wrap: context.knobs.boolean(
        label: 'Wrap',
        description: 'Set whether to wrap button width based on its content.',
        initialValue: true,
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
      variant: variant,
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
      showLeading: context.knobs.boolean(
        label: 'Leading',
        description: 'Show leading Widget.',
      ),
      showTrailing: context.knobs.boolean(
        label: 'Trailing',
        description: 'Show trailing Widget.',
      ),
    );
