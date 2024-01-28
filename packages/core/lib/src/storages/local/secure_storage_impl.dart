import 'package:core/src/di/service_locator.dart';
import 'package:core/src/log/log.dart';
import 'package:core/src/storages/local/local_storage.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@Named('secure')
@LazySingleton(as: LocalStorage)
class SecureStorageImpl implements LocalStorage {
  final FlutterSecureStorage storage;

  SecureStorageImpl(this.storage);

  @override
  Future<dynamic> get(String key) async => storage.read(key: key);

  @override
  Future<bool> remove(String key) async {
    try {
      await storage.delete(key: key);
      return true;
    } catch (e, trace) {
      await getIt<Log>().console(
        e.toString(),
        type: LogType.error,
        stackTrace: trace,
      );

      return false;
    }
  }

  @override
  Future<bool> save(String key, dynamic value) async {
    try {
      await storage.write(key: key, value: value.toString());
      return true;
    } catch (e, trace) {
      await getIt<Log>().console(
        e.toString(),
        type: LogType.error,
        stackTrace: trace,
      );

      return false;
    }
  }

  @override
  Future<bool> has(String key) async =>
      Future.value(storage.containsKey(key: key));
}
