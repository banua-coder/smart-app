import 'package:core/core.dart';
import 'package:core/src/network/http/http_client.dart';
import 'package:core/src/network/http/http_module.dart';
import 'package:dependencies/dependencies.dart';

@LazySingleton()
class SmartHttpModule extends HttpModule {
  SmartHttpModule() : super(getIt<HttpClient>());
}
