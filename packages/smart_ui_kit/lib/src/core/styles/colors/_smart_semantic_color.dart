part of 'smart_color_data.dart';

@immutable
class SmartSemanticColor {
  final Color primary;
  final Color secondary;
  final Color error;
  final Color success;
  final Color info;
  final Color warning;
  final Color gray;

  const SmartSemanticColor({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.info,
    required this.warning,
    required this.gray,
  });

  SmartSemanticColor lerp(
    SmartSemanticColor? other,
    double t,
  ) =>
      SmartSemanticColor(
        primary: Color.lerp(primary, other?.primary, t) ?? primary,
        secondary: Color.lerp(secondary, other?.secondary, t) ?? secondary,
        error: Color.lerp(error, other?.error, t) ?? error,
        success: Color.lerp(success, other?.success, t) ?? success,
        info: Color.lerp(info, other?.info, t) ?? info,
        warning: Color.lerp(warning, other?.warning, t) ?? warning,
        gray: Color.lerp(gray, other?.gray, t) ?? gray,
      );
}

class SmartMaterialColor with SmartMaterialColorMixin {
  final MaterialColor primary;
  final MaterialColor secondary;
  final MaterialColor error;
  final MaterialColor success;
  final MaterialColor info;
  final MaterialColor warning;
  final MaterialColor gray;

  const SmartMaterialColor({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.info,
    required this.warning,
    required this.gray,
  });
}
