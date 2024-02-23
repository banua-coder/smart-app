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

  static String supabaseApiUrl = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.supabaseApiUrl,
    FlavorStatus.staging => EnvDev.supabaseApiUrl,
    FlavorStatus.production => EnvDev.supabaseApiUrl,
    _ => EnvDev.supabaseApiUrl,
  };

  static String supabaseAnonKey = switch (Flavor.status) {
    FlavorStatus.development => EnvDev.supabaseAnonKey,
    FlavorStatus.staging => EnvDev.supabaseAnonKey,
    FlavorStatus.production => EnvDev.supabaseAnonKey,
    _ => EnvDev.supabaseAnonKey,
  };
}
