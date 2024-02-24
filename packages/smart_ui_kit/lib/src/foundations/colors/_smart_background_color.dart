part of 'smart_color_foundation.dart';

@immutable
class SmartBackgroundColor {
  final SmartBackgroundNeutralColor neutral;
  final SmartSemanticColor solid;
  final SmartSemanticColor subtle;
  final SmartBackgroundCardColor card;

  const SmartBackgroundColor._({
    required this.neutral,
    required this.solid,
    required this.subtle,
    required this.card,
  });

  factory SmartBackgroundColor.light() => SmartBackgroundColor._(
        neutral: SmartBackgroundNeutralColor.light(),
        solid: SmartSemanticColor(
          primary: SmartColors.primary.shade500,
          secondary: SmartColors.secondary.shade500,
          error: SmartColors.error.shade500,
          success: SmartColors.success.shade500,
          info: SmartColors.info.shade500,
          warning: SmartColors.warning.shade500,
          gray: SmartColors.gray.shade800,
        ),
        subtle: SmartSemanticColor(
          primary: SmartColors.primary.shade50,
          secondary: SmartColors.secondary.shade50,
          error: SmartColors.error.shade100,
          success: SmartColors.success.shade50,
          info: SmartColors.info[25]!,
          warning: SmartColors.warning.shade50,
          gray: SmartColors.gray[25]!,
        ),
        card: SmartBackgroundCardColor.light(),
      );

  factory SmartBackgroundColor.dark() => SmartBackgroundColor._(
        neutral: SmartBackgroundNeutralColor.dark(),
        solid: SmartSemanticColor(
          primary: SmartColors.primary.shade600,
          secondary: SmartColors.secondary.shade600,
          error: SmartColors.error.shade600,
          success: SmartColors.success.shade600,
          info: SmartColors.info.shade600,
          warning: SmartColors.warning.shade600,
          gray: SmartColors.gray.shade600,
        ),
        subtle: SmartSemanticColor(
          primary: SmartColors.primary.shade900,
          secondary: SmartColors.secondary.shade900,
          error: SmartColors.error.shade900,
          success: SmartColors.success.shade900,
          info: SmartColors.info.shade900,
          warning: SmartColors.warning.shade900,
          gray: SmartColors.gray.shade900,
        ),
        card: SmartBackgroundCardColor.dark(),
      );

  SmartBackgroundColor lerp(SmartBackgroundColor? other, double t) =>
      other == null
          ? this
          : SmartBackgroundColor._(
              neutral: neutral.lerp(other.neutral, t),
              solid: solid.lerp(other.solid, t),
              subtle: subtle.lerp(other.subtle, t),
              card: card.lerp(other.card, t),
            );
}

@immutable
class SmartBackgroundCardColor {
  final Color main;
  final Color secondary;

  const SmartBackgroundCardColor._({
    required this.main,
    required this.secondary,
  });

  factory SmartBackgroundCardColor.light() => SmartBackgroundCardColor._(
        main: SmartColors.gray[0]!,
        secondary: SmartColors.gray.shade50,
      );

  factory SmartBackgroundCardColor.dark() => SmartBackgroundCardColor._(
        main: SmartColors.gray.shade800,
        secondary: SmartColors.gray.shade700,
      );

  SmartBackgroundCardColor lerp(SmartBackgroundCardColor? other, double t) =>
      other == null
          ? this
          : SmartBackgroundCardColor._(
              main: Color.lerp(main, other.main, t) ?? main,
              secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
            );
}
