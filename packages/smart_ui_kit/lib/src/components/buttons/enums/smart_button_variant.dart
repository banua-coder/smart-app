import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/components/buttons/data/button_variant_data.dart';

enum SmartButtonVariant {
  primary,
  secondary,
  tertiary,
  danger;

  ButtonVariantData data(BuildContext context) => switch (this) {
        primary => ButtonVariantData(
            backgroundColor: context.smartColor.background.solid.primary,
            outlineBgColor: Colors.transparent,
            outlineBorderColor: context.smartColor.background.solid.primary,
            borderColor: context.smartColor.background.solid.primary,
            outlineFgColor: context.smartColor.text.solid.primary,
            foregroundColor: Colors.white,
          ),
        secondary => ButtonVariantData(
            backgroundColor: context.smartColor.background.solid.secondary,
            outlineBgColor: Colors.transparent,
            outlineBorderColor: context.smartColor.background.solid.secondary,
            borderColor: context.smartColor.background.solid.secondary,
            outlineFgColor: context.smartColor.text.solid.secondary,
            foregroundColor: Colors.white,
          ),
        tertiary => ButtonVariantData(
            backgroundColor: context.smartColor.background.solid.neutral,
            outlineBgColor: Colors.transparent,
            outlineBorderColor: context.smartColor.background.solid.neutral,
            borderColor: context.smartColor.outline.neutral.strong,
            outlineFgColor: context.smartColor.text.solid.neutral,
            foregroundColor: Colors.white,
          ),
        danger => ButtonVariantData(
            backgroundColor: context.smartColor.background.solid.error,
            outlineBgColor: Colors.transparent,
            outlineBorderColor: context.smartColor.background.solid.error,
            borderColor: context.smartColor.background.solid.error,
            outlineFgColor: context.smartColor.text.solid.error,
            foregroundColor: Colors.white,
          ),
      };
}
