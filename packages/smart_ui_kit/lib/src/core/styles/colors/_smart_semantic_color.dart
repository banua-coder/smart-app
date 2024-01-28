part of 'smart_color_data.dart';

@immutable
class SmartSemanticColor<T> {
  final T primary;
  final T secondary;
  final T error;
  final T success;
  final T info;
  final T warning;
  final T gray;

  const SmartSemanticColor({
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.info,
    required this.warning,
    required this.gray,
  });
}
