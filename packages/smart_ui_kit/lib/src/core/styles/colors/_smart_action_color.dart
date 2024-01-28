part of 'smart_color_data.dart';

@immutable
class SmartActionColor extends SmartSemanticColor<MaterialColor> {
  const SmartActionColor._({
    required super.primary,
    required super.secondary,
    required super.error,
    required super.info,
    required super.neutral,
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
        neutral: SmartColors.gray,
      );
}
