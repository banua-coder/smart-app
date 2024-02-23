/// {@template core}
/// Core package of Smart.
/// {@endtemplate}
library core;

export 'package:supabase_flutter/supabase_flutter.dart' hide LocalStorage;

export 'src/data/data.dart';
export 'src/di/service_locator.dart';
export 'src/exceptions/exceptions.dart';
export 'src/extensions/extensions.dart';
export 'src/failures/failures.dart';
export 'src/helpers/helpers.dart';
export 'src/log/log.dart';
export 'src/network/network.dart';
export 'src/router/router.dart';
export 'src/storages/storages.dart';
export 'src/typedef/typedef.dart';
export 'src/usecases/usecase.dart';
export 'src/utils/utils.dart';
