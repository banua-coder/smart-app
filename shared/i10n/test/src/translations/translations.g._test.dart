import 'package:flutter_test/flutter_test.dart';
import 'package:i10n/i10n.dart';

void main() {
  group(
    'i10n',
    () {
      test('All locales should be supported by Flutter', () {
        for (final locale in AppLocale.values) {
          // This will fail if the locale is not supported by Flutter
          expect(kMaterialSupportedLanguages, contains(locale.languageCode));
        }
      });
      group(
        'en',
        () {
          test(
            'should compile english translations',
            () => expect(AppLocale.en.build().app_name, 'Smart'),
          );
        },
      );

      group(
        'id',
        () {
          test(
            'should compile indonesian translations',
            () => expect(AppLocale.id.build().app_name, 'Smart'),
          );
        },
      );
    },
  );
}
