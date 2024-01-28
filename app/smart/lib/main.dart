import 'package:config/config.dart';
import 'package:i10n/i10n.dart';
import 'package:smart/app.dart';
import 'package:smart/bootstrap.dart';

void main() => bootstrap(
      () async {
        Flavor.status = FlavorStatus.production;
        return TranslationProvider(
          child: const App(),
        );
      },
    );
