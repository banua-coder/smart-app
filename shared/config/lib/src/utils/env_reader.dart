import 'package:config/config.dart';
import 'package:config/src/env/env.dart';

/// This class is used to map the generated env from
/// envied generator based on the app flavor.
class Env {
  const Env._();

  static String apiBaseUrl = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.apiBaseUrl,
    FlavorStatus.staging => EnvStg.apiBaseUrl,
    FlavorStatus.production => EnvProd.apiBaseUrl,
    _ => EnvDev.apiBaseUrl,
  };
}
