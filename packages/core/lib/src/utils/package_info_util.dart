import 'package:dependencies/dependencies.dart';
import 'package:package_info_plus/package_info_plus.dart';

@Injectable()
class PackageInfoUtil {
  final PackageInfo _packageInfo;

  const PackageInfoUtil(this._packageInfo);

  String version() => _packageInfo.version;
  String buildNumber() => _packageInfo.buildNumber;
  String appName() => _packageInfo.appName;
}
