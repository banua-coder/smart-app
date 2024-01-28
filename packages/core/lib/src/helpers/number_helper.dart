import 'package:dependencies/dependencies.dart';
import 'package:i10n/i10n.dart';

class NumberHelper {
  NumberHelper._();
  static double calculatePercentage({
    required num value,
    required num total,
  }) =>
      value / total * 100;

  static String numberFormat(
    num number, {
    String? locale,
    bool compact = false,
    bool showExplicitSign = false,
  }) {
    final formatter = compact
        ? NumberFormat.compact(
            explicitSign: showExplicitSign,
            locale: locale ?? AppLocaleUtils.findDeviceLocale().languageCode,
          )
        : NumberFormat.decimalPattern(
            locale ?? AppLocaleUtils.findDeviceLocale().languageCode,
          );

    return formatter.format(number);
  }

  static String percentageFormat(
    num number, {
    String? locale,
  }) {
    final formatter = NumberFormat.percentPattern(
      locale ?? AppLocaleUtils.findDeviceLocale().languageCode,
    );

    return formatter.format(number);
  }
}
