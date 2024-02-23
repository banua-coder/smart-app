import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  path: '.env',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvProd',
)
abstract class EnvProd {
  @EnviedField()
  static final String apiBaseUrl = _EnvProd.apiBaseUrl;
  @EnviedField()
  static final String supabaseApiUrl = _EnvProd.supabaseApiUrl;
  @EnviedField()
  static final String supabaseAnonKey = _EnvProd.supabaseAnonKey;
}

@Envied(
  path: '.env.development',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvDev',
)
abstract class EnvDev {
  @EnviedField()
  static final String apiBaseUrl = _EnvDev.apiBaseUrl;
  @EnviedField()
  static final String supabaseApiUrl = _EnvDev.supabaseApiUrl;
  @EnviedField()
  static final String supabaseAnonKey = _EnvDev.supabaseAnonKey;
}

@Envied(
  path: '.env',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvStg',
)
abstract class EnvStg {
  @EnviedField()
  static final String apiBaseUrl = _EnvStg.apiBaseUrl;
  @EnviedField()
  static final String supabaseApiUrl = _EnvStg.supabaseApiUrl;
  @EnviedField()
  static final String supabaseAnonKey = _EnvStg.supabaseAnonKey;
}
