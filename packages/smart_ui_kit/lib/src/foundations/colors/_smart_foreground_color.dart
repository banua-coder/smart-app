part of 'smart_color_foundation.dart';

@immutable
class SmartTextColor {
  final SmartForegroundNeutralColor neutral;
  final SmartSemanticColor solid;

  const SmartTextColor._({
    required this.neutral,
    required this.solid,
  });

  factory SmartTextColor.light() => SmartTextColor._(
        neutral: SmartForegroundNeutralColor(
          main: SmartColors.textMain,
          subtle: SmartColors.textSubtle,
          strong: SmartColors.textStrong,
          inverse: SmartColors.textInverse,
          disabled: SmartColors.textDisabled,
        ),
        solid: SmartSemanticColor(
          primary: SmartColors.primary.shade500,
          secondary: SmartColors.secondary.shade500,
          error: SmartColors.error.shade500,
          success: SmartColors.success.shade500,
          info: SmartColors.info.shade500,
          warning: SmartColors.warning.shade600,
          gray: SmartColors.gray.shade500,
        ),
      );

  factory SmartTextColor.dark() => SmartTextColor._(
        neutral: SmartForegroundNeutralColor(
          main: SmartColors.textMainDark,
          subtle: SmartColors.textSubtleDark,
          strong: SmartColors.textStrongDark,
          inverse: SmartColors.textInverseDark,
          disabled: SmartColors.textDisabledDark,
        ),
        solid: SmartSemanticColor(
          primary: SmartColors.primary.shade400,
          secondary: SmartColors.secondary.shade400,
          error: SmartColors.error.shade400,
          success: SmartColors.success.shade400,
          info: SmartColors.info.shade400,
          warning: SmartColors.warning.shade400,
          gray: SmartColors.gray.shade400,
        ),
      );

  SmartTextColor lerp(SmartTextColor? other, double t) => SmartTextColor._(
        neutral: neutral.lerp(other?.neutral, t),
        solid: solid.lerp(other?.solid, t),
      );
}

@immutable
class SmartIconColor {
  final SmartForegroundNeutralColor neutral;
  final SmartSemanticColor solid;

  const SmartIconColor._({
    required this.neutral,
    required this.solid,
  });

  factory SmartIconColor.light() => SmartIconColor._(
        neutral: SmartForegroundNeutralColor(
          main: SmartColors.iconMain,
          subtle: SmartColors.iconSubtle,
          strong: SmartColors.iconStrong,
          inverse: SmartColors.iconInverse,
          disabled: SmartColors.iconDisabled,
        ),
        solid: SmartSemanticColor(
          primary: SmartColors.primary.shade500,
          secondary: SmartColors.secondary.shade500,
          error: SmartColors.error.shade500,
          success: SmartColors.success.shade500,
          info: SmartColors.info.shade500,
          warning: SmartColors.warning.shade600,
          gray: SmartColors.gray.shade500,
        ),
      );

  factory SmartIconColor.dark() => SmartIconColor._(
        neutral: SmartForegroundNeutralColor(
          main: SmartColors.iconMainDark,
          subtle: SmartColors.iconSubtleDark,
          strong: SmartColors.iconStrongDark,
          inverse: SmartColors.iconInverseDark,
          disabled: SmartColors.iconDisabledDark,
        ),
        solid: SmartSemanticColor(
          primary: SmartColors.primary.shade400,
          secondary: SmartColors.secondary.shade400,
          error: SmartColors.error.shade400,
          success: SmartColors.success.shade400,
          info: SmartColors.info.shade400,
          warning: SmartColors.warning.shade400,
          gray: SmartColors.gray.shade400,
        ),
      );

  SmartIconColor lerp(SmartIconColor? other, double t) => SmartIconColor._(
        neutral: neutral.lerp(other?.neutral, t),
        solid: solid.lerp(other?.solid, t),
      );
}