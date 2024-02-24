import 'package:flutter/material.dart';
import 'package:smart_ui_kit/smart_ui_kit.dart';

enum ColorType {
  action,
  background,
  icon,
  outline,
  overlay,
  text,
}

class ColorData {
  ColorData({
    required this.token,
    required this.color,
    required this.colorType,
    this.textColor,
  });

  final String token;
  final Color color;
  final Color? textColor;
  final ColorType colorType;
}

List<ColorData> getColors(BuildContext context) => [
      ColorData(
        token: 'action.primary',
        color: context.smartColor.action.primary,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.secondary',
        color: context.smartColor.action.secondary,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.info',
        color: context.smartColor.action.info,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.gray',
        color: context.smartColor.action.gray,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.warning',
        color: context.smartColor.action.warning,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'action.error',
        color: context.smartColor.action.error,
        textColor: Colors.white,
        colorType: ColorType.action,
      ),
      ColorData(
        token: 'background.card.main',
        color: context.smartColor.background.card.main,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.card.secondary',
        color: context.smartColor.background.card.secondary,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.main',
        color: context.smartColor.background.neutral.main,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.white',
        color: context.smartColor.background.neutral.white,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.strong',
        color: context.smartColor.background.neutral.strong,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.subtle',
        color: context.smartColor.background.neutral.subtle,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.neutral.inverse',
        textColor: context.smartColor.text.neutral.inverse,
        colorType: ColorType.background,
        color: context.smartColor.background.neutral.inverse,
      ),
      ColorData(
        token: 'background.solid.primary',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.smartColor.background.solid.primary,
      ),
      ColorData(
        token: 'background.solid.secondary',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.smartColor.background.solid.secondary,
      ),
      ColorData(
        token: 'background.solid.gray',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.smartColor.background.solid.gray,
      ),
      ColorData(
        token: 'background.solid.info',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.smartColor.background.solid.info,
      ),
      ColorData(
        token: 'background.solid.error',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.smartColor.background.solid.error,
      ),
      ColorData(
        token: 'background.solid.warning',
        color: context.smartColor.background.solid.warning,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.solid.success',
        textColor: Colors.white,
        colorType: ColorType.background,
        color: context.smartColor.background.solid.success,
      ),
      ColorData(
        token: 'background.subtle.primary',
        color: context.smartColor.background.subtle.primary,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.secondary',
        color: context.smartColor.background.subtle.secondary,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.gray',
        color: context.smartColor.background.subtle.gray,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.info',
        color: context.smartColor.background.subtle.info,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.error',
        color: context.smartColor.background.subtle.error,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.warning',
        color: context.smartColor.background.subtle.warning,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'background.subtle.success',
        color: context.smartColor.background.subtle.success,
        colorType: ColorType.background,
      ),
      ColorData(
        token: 'text.neutral.main',
        textColor: context.smartColor.text.neutral.inverse,
        color: context.smartColor.text.neutral.main,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.subtle',
        textColor: context.smartColor.text.neutral.inverse,
        color: context.smartColor.text.neutral.subtle,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.strong',
        textColor: context.smartColor.text.neutral.inverse,
        color: context.smartColor.text.neutral.strong,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.inverse',
        textColor: context.smartColor.text.neutral.main,
        color: context.smartColor.text.neutral.inverse,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.neutral.disabled',
        textColor: Colors.white,
        color: context.smartColor.text.neutral.disabled,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.solid.primary',
        textColor: Colors.white,
        color: context.smartColor.text.solid.primary,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.solid.secondary',
        textColor: Colors.white,
        color: context.smartColor.text.solid.secondary,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.solid.info',
        textColor: Colors.white,
        color: context.smartColor.text.solid.info,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.solid.gray',
        textColor: Colors.white,
        color: context.smartColor.text.solid.gray,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.solid.error',
        textColor: Colors.white,
        color: context.smartColor.text.solid.error,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.solid.warning',
        textColor: Colors.white,
        color: context.smartColor.text.solid.warning,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'text.solid.success',
        textColor: Colors.white,
        color: context.smartColor.text.solid.success,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'icon.neutral.main',
        textColor: context.smartColor.text.neutral.inverse,
        color: context.smartColor.icon.neutral.main,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.subtle',
        textColor: context.smartColor.text.neutral.inverse,
        color: context.smartColor.icon.neutral.subtle,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.strong',
        textColor: context.smartColor.text.neutral.inverse,
        color: context.smartColor.icon.neutral.strong,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.inverse',
        textColor: context.smartColor.text.neutral.main,
        color: context.smartColor.icon.neutral.inverse,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.neutral.disabled',
        textColor: Colors.white,
        color: context.smartColor.icon.neutral.disabled,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'text.solid.primary',
        textColor: Colors.white,
        color: context.smartColor.text.solid.primary,
        colorType: ColorType.text,
      ),
      ColorData(
        token: 'icon.solid.secondary',
        textColor: Colors.white,
        color: context.smartColor.icon.solid.secondary,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.solid.info',
        textColor: Colors.white,
        color: context.smartColor.icon.solid.info,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.solid.gray',
        textColor: Colors.white,
        color: context.smartColor.icon.solid.gray,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.solid.error',
        textColor: Colors.white,
        color: context.smartColor.icon.solid.error,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.solid.warning',
        textColor: Colors.white,
        color: context.smartColor.icon.solid.warning,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'icon.solid.success',
        textColor: Colors.white,
        color: context.smartColor.icon.solid.success,
        colorType: ColorType.icon,
      ),
      ColorData(
        token: 'outline.neutral.main',
        textColor: context.smartColor.text.neutral.main,
        color: context.smartColor.outline.neutral.main,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.neutral.strong',
        textColor: context.smartColor.text.neutral.main,
        color: context.smartColor.outline.neutral.strong,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.neutral.subtle',
        textColor: context.smartColor.text.neutral.main,
        color: context.smartColor.outline.neutral.subtle,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.primary',
        color: context.smartColor.outline.color.primary,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.secondary',
        color: context.smartColor.outline.color.secondary,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.gray',
        color: context.smartColor.outline.color.gray,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.info',
        color: context.smartColor.outline.color.info,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.success',
        color: context.smartColor.outline.color.success,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.warning',
        color: context.smartColor.outline.color.warning,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'outline.color.error',
        color: context.smartColor.outline.color.error,
        colorType: ColorType.outline,
      ),
      ColorData(
        token: 'overlay',
        textColor: context.smartColor.text.neutral.main,
        color: context.smartColor.overlay,
        colorType: ColorType.overlay,
      ),
    ];
