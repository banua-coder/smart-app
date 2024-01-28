import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  path: '.env',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvProd',
)
abstract class EnvProd {
  //TODO: add Env variable you want to generate like example below.
  @EnviedField()
  static final String apiBaseUrl = _EnvProd.apiBaseUrl;
}

@Envied(
  path: '.env.development',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvDev',
)
abstract class EnvDev {
  //TODO: add Env variable you want to generate like example below.
  @EnviedField()
  static final String apiBaseUrl = _EnvDev.apiBaseUrl;
}

@Envied(
  path: '.env',
  obfuscate: true,
  useConstantCase: true,
  name: 'EnvStg',
)
abstract class EnvStg {
  //TODO: add Env variable you want to generate like example below.
  @EnviedField()
  static final String apiBaseUrl = _EnvStg.apiBaseUrl;
}
