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
          primary: SmartColorFoundation.bgPrimary,
          secondary: SmartColorFoundation.bgSecondary,
          error: SmartColorFoundation.bgError,
          success: SmartColorFoundation.bgSuccess,
          info: SmartColorFoundation.bgInfo,
          warning: SmartColorFoundation.bgWarning,
          gray: SmartColorFoundation.bgGray,
        ),
        subtle: SmartSemanticColor(
          primary: SmartColorFoundation.bgPrimarySubtle,
          secondary: SmartColorFoundation.bgSecondarySubtle,
          error: SmartColorFoundation.bgErrorSubtle,
          success: SmartColorFoundation.bgSuccessSubtle,
          info: SmartColorFoundation.bgInfoSubtle,
          warning: SmartColorFoundation.bgWarningSubtle,
          gray: SmartColorFoundation.bgGraySubtle,
        ),
        card: SmartBackgroundCardColor.light(),
      );

  factory SmartBackgroundColor.dark() => SmartBackgroundColor._(
        neutral: SmartBackgroundNeutralColor.dark(),
        solid: SmartSemanticColor(
          primary: SmartColorFoundation.bgPrimaryDark,
          secondary: SmartColorFoundation.bgSecondaryDark,
          error: SmartColorFoundation.bgErrorDark,
          success: SmartColorFoundation.bgSuccessDark,
          info: SmartColorFoundation.bgInfoDark,
          warning: SmartColorFoundation.bgWarningDark,
          gray: SmartColorFoundation.bgGrayDark,
        ),
        subtle: SmartSemanticColor(
          primary: SmartColorFoundation.bgPrimarySubtleDark,
          secondary: SmartColorFoundation.bgSecondarySubtleDark,
          error: SmartColorFoundation.bgErrorSubtleDark,
          success: SmartColorFoundation.bgSuccessSubtleDark,
          info: SmartColorFoundation.bgInfoSubtleDark,
          warning: SmartColorFoundation.bgWarningSubtleDark,
          gray: SmartColorFoundation.bgGraySubtleDark,
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
        main: SmartColorFoundation.bgCardMain,
        secondary: SmartColorFoundation.bgCardSecondary,
      );

  factory SmartBackgroundCardColor.dark() => SmartBackgroundCardColor._(
        main: SmartColorFoundation.bgCardMainDark,
        secondary: SmartColorFoundation.bgCardSecondaryDark,
      );

  SmartBackgroundCardColor lerp(SmartBackgroundCardColor? other, double t) =>
      other == null
          ? this
          : SmartBackgroundCardColor._(
              main: Color.lerp(main, other.main, t) ?? main,
              secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
            );
}
