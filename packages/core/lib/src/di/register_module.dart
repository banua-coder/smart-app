import 'package:config/config.dart';
import 'package:core/src/log/filter/release_log_filter.dart';
import 'package:core/src/log/printer/simple_log_printer.dart';
import 'package:core/src/network/http/http_client.dart';
import 'package:core/src/network/http/http_setting.dart';
import 'package:dependencies/dependencies.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class RegisterModule {
  Logger get logger => Logger(
        filter: ReleaseLogFilter(),
        printer: PrefixPrinter(
          SimpleLogPrinter(),
          error: 'SmartError -',
          debug: 'SmartLog -',
          fatal: 'SmartFatalError -',
          info: 'SmartInfo -',
          trace: 'SmartTrace -',
          warning: 'SmartWarning -',
        ),
      );

  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  SupabaseClient get supabaseClient => Supabase.instance.client;

  @preResolve
  Future<Supabase> get supabase => Supabase.initialize(
        url: Env.supabaseApiUrl,
        anonKey: Env.supabaseAnonKey,
      );

  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();

  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
          keyCipherAlgorithm:
              KeyCipherAlgorithm.RSA_ECB_OAEPwithSHA_256andMGF1Padding,
          storageCipherAlgorithm: StorageCipherAlgorithm.AES_GCM_NoPadding,
        ),
      );

  ///TODO: Update your HttpClient and apiBaseUrl
  HttpClient get httpClient => HttpClient.init(
        HttpSetting(
          baseUrl: Env.apiBaseUrl,
        ),
      );
}
