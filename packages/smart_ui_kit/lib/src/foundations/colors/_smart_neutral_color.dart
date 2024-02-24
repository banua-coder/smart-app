part of 'smart_color_foundation.dart';

@immutable
class SmartNeutralColor {
  final Color main;
  final Color subtle;
  final Color strong;

  const SmartNeutralColor({
    required this.main,
    required this.subtle,
    required this.strong,
  });
}

@immutable
class SmartForegroundNeutralColor extends SmartNeutralColor {
  final Color disabled;
  final Color inverse;

  const SmartForegroundNeutralColor({
    required this.disabled,
    required super.main,
    required super.subtle,
    required this.inverse,
    required super.strong,
  });

  SmartForegroundNeutralColor lerp(
    SmartForegroundNeutralColor? other,
    double t,
  ) =>
      SmartForegroundNeutralColor(
        disabled: Color.lerp(disabled, other?.disabled, t) ?? disabled,
        main: Color.lerp(main, other?.main, t) ?? main,
        subtle: Color.lerp(subtle, other?.subtle, t) ?? subtle,
        inverse: Color.lerp(inverse, other?.inverse, t) ?? inverse,
        strong: Color.lerp(strong, other?.strong, t) ?? strong,
      );
}

@immutable
class SmartBackgroundNeutralColor extends SmartNeutralColor {
  final Color white;
  final Color inverse;

  const SmartBackgroundNeutralColor._({
    required this.white,
    required super.main,
    required super.subtle,
    required this.inverse,
    required super.strong,
  });

  factory SmartBackgroundNeutralColor.light() => SmartBackgroundNeutralColor._(
        main: SmartColors.bgMain,
        subtle: SmartColors.bgSubtle,
        strong: SmartColors.bgStrong,
        inverse: SmartColors.bgInverse,
        white: SmartColors.bgWhite,
      );

  factory SmartBackgroundNeutralColor.dark() => SmartBackgroundNeutralColor._(
        main: SmartColors.bgMainDark,
        subtle: SmartColors.bgSubtleDark,
        strong: SmartColors.bgStrongDark,
        inverse: SmartColors.bgInverseDark,
        white: SmartColors.bgWhiteDark,
      );

  SmartBackgroundNeutralColor lerp(
    SmartBackgroundNeutralColor? other,
    double t,
  ) =>
      SmartBackgroundNeutralColor._(
        white: Color.lerp(white, other?.white, t) ?? white,
        main: Color.lerp(main, other?.main, t) ?? main,
        subtle: Color.lerp(subtle, other?.subtle, t) ?? subtle,
        inverse: Color.lerp(inverse, other?.inverse, t) ?? inverse,
        strong: Color.lerp(strong, other?.strong, t) ?? strong,
      );
}

@immutable
class SmartOutlineNeutralColor extends SmartNeutralColor {
  const SmartOutlineNeutralColor._({
    required super.main,
    required super.subtle,
    required super.strong,
  });

  factory SmartOutlineNeutralColor.light() => SmartOutlineNeutralColor._(
        main: Colors.black.withOpacity(0.1),
        subtle: Colors.black.withOpacity(0.05),
        strong: Colors.black.withOpacity(0.25),
      );

  factory SmartOutlineNeutralColor.dark() => SmartOutlineNeutralColor._(
        main: Colors.white.withOpacity(0.1),
        subtle: Colors.white.withOpacity(0.05),
        strong: Colors.white.withOpacity(0.25),
      );

  SmartOutlineNeutralColor lerp(
    SmartNeutralColor? other,
    double t,
  ) =>
      SmartOutlineNeutralColor._(
        main: Color.lerp(main, other?.main, t) ?? main,
        subtle: Color.lerp(subtle, other?.subtle, t) ?? subtle,
        strong: Color.lerp(strong, other?.strong, t) ?? strong,
      );
}
