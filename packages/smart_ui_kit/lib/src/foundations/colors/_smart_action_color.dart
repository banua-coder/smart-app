part of 'smart_color_foundation.dart';

@immutable
class SmartActionColor extends SmartMaterialColor {
  const SmartActionColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.info,
    required super.gray,
    required super.success,
    required super.warning,
  });

  factory SmartActionColor.create() => const SmartActionColor._(
        primary: SmartColors.primary,
        secondary: SmartColors.secondary,
        error: SmartColors.error,
        success: SmartColors.success,
        info: SmartColors.info,
        warning: SmartColors.warning,
        gray: SmartColors.gray,
      );

  SmartActionColor lerp(
    SmartActionColor other,
    double t,
  ) =>
      SmartActionColor._(
        primary: lerpMaterialColor(primary, other.primary, t),
        secondary: lerpMaterialColor(secondary, other.secondary, t),
        error: lerpMaterialColor(error, other.error, t),
        success: lerpMaterialColor(success, other.success, t),
        info: lerpMaterialColor(info, other.info, t),
        warning: lerpMaterialColor(warning, other.warning, t),
        gray: lerpMaterialColor(gray, other.gray, t),
      );
}
