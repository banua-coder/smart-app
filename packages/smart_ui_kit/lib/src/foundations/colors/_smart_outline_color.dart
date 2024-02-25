part of 'smart_color_foundation.dart';

@immutable
class SmartOutlineColor {
  final SmartOutlineNeutralColor neutral;
  final SmartSemanticColor color;

  const SmartOutlineColor._({
    required this.neutral,
    required this.color,
  });

  factory SmartOutlineColor.light() => SmartOutlineColor._(
        neutral: SmartOutlineNeutralColor.light(),
        color: SmartSemanticColor(
          primary: SmartColorFoundation.outlinePrimary,
          secondary: SmartColorFoundation.outlineSecondary,
          error: SmartColorFoundation.outlineError,
          success: SmartColorFoundation.outlineSuccess,
          info: SmartColorFoundation.outlineInfo,
          warning: SmartColorFoundation.outlineWarning,
          gray: SmartColorFoundation.outlineGray,
        ),
      );

  factory SmartOutlineColor.dark() => SmartOutlineColor._(
        neutral: SmartOutlineNeutralColor.dark(),
        color: SmartSemanticColor(
          primary: SmartColorFoundation.outlinePrimaryDark,
          secondary: SmartColorFoundation.outlineSecondaryDark,
          error: SmartColorFoundation.outlineErrorDark,
          success: SmartColorFoundation.outlineSuccessDark,
          info: SmartColorFoundation.outlineInfoDark,
          warning: SmartColorFoundation.outlineWarningDark,
          gray: SmartColorFoundation.outlineGrayDark,
        ),
      );

  SmartOutlineColor lerp(
    SmartOutlineColor? other,
    double t,
  ) =>
      SmartOutlineColor._(
        neutral: neutral.lerp(other?.neutral, t),
        color: color.lerp(other?.color, t),
      );
}
