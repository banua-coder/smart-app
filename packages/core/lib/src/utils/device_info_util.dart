import 'dart:io';

import 'package:dependencies/dependencies.dart';
import 'package:device_info_plus/device_info_plus.dart';


@Injectable()
class DeviceInfoUtil {
  final DeviceInfoPlugin _deviceInfoPlugin;

  DeviceInfoUtil(this._deviceInfoPlugin);

  Future<String> name() async {
    final deviceInfo = StringBuffer();
    if (Platform.isAndroid) {
      final androidInfo = await _deviceInfoPlugin.androidInfo;
      final release = androidInfo.version.release;
      final sdkInt = androidInfo.version.sdkInt;
      final manufacturer = androidInfo.manufacturer;
      final model = androidInfo.model;
      deviceInfo.writeAll([
        'Android ',
        release,
        ' (SDK ',
        sdkInt.toString(),
        '), ',
        manufacturer,
        ' ',
        model,
      ]);
    } else if (Platform.isIOS) {
      final iosInfo = await _deviceInfoPlugin.iosInfo;
      final systemName = iosInfo.systemName;
      final version = iosInfo.systemVersion;
      final name = iosInfo.name;
      final model = iosInfo.model;
      deviceInfo.writeAll([
        systemName,
        ' ',
        version,
        ', ',
        name,
        ' ',
        model,
      ]);
    }

    return deviceInfo.toString();
  }

  Future<bool> isPhysicalDevice() async {
    var isPhysicalDevice = false;
    if (Platform.isAndroid) {
      final androidInfo = await _deviceInfoPlugin.androidInfo;
      isPhysicalDevice = androidInfo.isPhysicalDevice;
    } else if (Platform.isIOS) {
      final iosInfo = await _deviceInfoPlugin.iosInfo;
      isPhysicalDevice = iosInfo.isPhysicalDevice;
    }

    return isPhysicalDevice;
  }

  Future<int> getSdkInt() async {
    final androidInfo = await _deviceInfoPlugin.androidInfo;
    return androidInfo.version.sdkInt;
  }
}
