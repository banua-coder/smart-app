import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';
import 'package:smart_ui_kit/src/atoms/buttons/data/button_style_data.dart';

enum SmartButtonType {
  filled,
  outline,
  ghost;

  ButtonStyleData data(BuildContext context) => switch (this) {
        filled => ButtonStyleData(
            disabledBgColor: context.smartColor.background.neutral.strong,
            disabledFgColor: context.smartColor.text.neutral.disabled,
            disabledBorderColor: Colors.transparent,
          ),
        outline => ButtonStyleData(
            disabledBgColor: Colors.transparent,
            disabledFgColor: context.smartColor.text.neutral.disabled,
            disabledBorderColor: context.smartColor.outline.neutral.subtle,
          ),
        ghost => ButtonStyleData(
            disabledBgColor: Colors.transparent,
            disabledFgColor: context.smartColor.text.neutral.disabled,
            disabledBorderColor: Colors.transparent,
          ),
      };
}
