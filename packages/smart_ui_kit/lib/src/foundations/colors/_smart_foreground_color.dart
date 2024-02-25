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
          main: SmartColorFoundation.textMain,
          subtle: SmartColorFoundation.textSubtle,
          strong: SmartColorFoundation.textStrong,
          inverse: SmartColorFoundation.textInverse,
          disabled: SmartColorFoundation.textDisabled,
        ),
        solid: SmartSemanticColor(
          primary: SmartColorFoundation.textPrimary,
          secondary: SmartColorFoundation.textSecondary,
          error: SmartColorFoundation.textError,
          success: SmartColorFoundation.textSuccess,
          info: SmartColorFoundation.textInfo,
          warning: SmartColorFoundation.textWarning,
          gray: SmartColorFoundation.textGray,
        ),
      );

  factory SmartTextColor.dark() => SmartTextColor._(
        neutral: SmartForegroundNeutralColor(
          main: SmartColorFoundation.textMainDark,
          subtle: SmartColorFoundation.textSubtleDark,
          strong: SmartColorFoundation.textStrongDark,
          inverse: SmartColorFoundation.textInverseDark,
          disabled: SmartColorFoundation.textDisabledDark,
        ),
        solid: SmartSemanticColor(
          primary: SmartColorFoundation.textPrimaryDark,
          secondary: SmartColorFoundation.textSecondaryDark,
          error: SmartColorFoundation.textErrorDark,
          success: SmartColorFoundation.textSuccessDark,
          info: SmartColorFoundation.textInfoDark,
          warning: SmartColorFoundation.textWarningDark,
          gray: SmartColorFoundation.textGrayDark,
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
          main: SmartColorFoundation.iconMain,
          subtle: SmartColorFoundation.iconSubtle,
          strong: SmartColorFoundation.iconStrong,
          inverse: SmartColorFoundation.iconInverse,
          disabled: SmartColorFoundation.iconDisabled,
        ),
        solid: SmartSemanticColor(
          primary: SmartColorFoundation.iconPrimary,
          secondary: SmartColorFoundation.iconSecondary,
          error: SmartColorFoundation.iconError,
          success: SmartColorFoundation.iconSuccess,
          info: SmartColorFoundation.iconInfo,
          warning: SmartColorFoundation.iconWarning,
          gray: SmartColorFoundation.iconGray,
        ),
      );

  factory SmartIconColor.dark() => SmartIconColor._(
        neutral: SmartForegroundNeutralColor(
          main: SmartColorFoundation.iconMainDark,
          subtle: SmartColorFoundation.iconSubtleDark,
          strong: SmartColorFoundation.iconStrongDark,
          inverse: SmartColorFoundation.iconInverseDark,
          disabled: SmartColorFoundation.iconDisabledDark,
        ),
        solid: SmartSemanticColor(
          primary: SmartColorFoundation.iconPrimaryDark,
          secondary: SmartColorFoundation.iconSecondaryDark,
          error: SmartColorFoundation.iconErrorDark,
          success: SmartColorFoundation.iconSuccessDark,
          info: SmartColorFoundation.iconInfoDark,
          warning: SmartColorFoundation.iconWarningDark,
          gray: SmartColorFoundation.iconGrayDark,
        ),
      );

  SmartIconColor lerp(SmartIconColor? other, double t) => SmartIconColor._(
        neutral: neutral.lerp(other?.neutral, t),
        solid: solid.lerp(other?.solid, t),
      );
}
