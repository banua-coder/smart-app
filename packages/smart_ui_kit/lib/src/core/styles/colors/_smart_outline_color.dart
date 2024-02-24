part of 'smart_color_data.dart';

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
          primary: SmartColors.primary.shade500.withOpacity(0.25),
          secondary: SmartColors.secondary.shade500.withOpacity(0.25),
          error: SmartColors.error.shade500.withOpacity(0.25),
          success: SmartColors.success.shade500.withOpacity(0.25),
          info: SmartColors.info.shade500.withOpacity(0.25),
          warning: SmartColors.warning.shade500.withOpacity(0.25),
          gray: SmartColors.gray.shade500.withOpacity(0.25),
        ),
      );

  factory SmartOutlineColor.dark() => SmartOutlineColor._(
        neutral: SmartOutlineNeutralColor.dark(),
        color: SmartSemanticColor(
          primary: SmartColors.primary.shade300.withOpacity(0.25),
          secondary: SmartColors.secondary.shade300.withOpacity(0.25),
          error: SmartColors.error.shade300.withOpacity(0.25),
          success: SmartColors.success.shade300.withOpacity(0.25),
          info: SmartColors.info.shade300.withOpacity(0.25),
          warning: SmartColors.warning.shade300.withOpacity(0.25),
          gray: SmartColors.gray.shade300.withOpacity(0.25),
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
