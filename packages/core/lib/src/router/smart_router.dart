import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:home/home.dart';

part 'smart_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  modules: [
    HomeRouter,
  ],
)
class SmartRouter extends _$SmartRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: EmptyRouterRoute.page,
          path: '/',
          children: [
            AutoRoute(
              initial: true,
              page: HomeRoute.page,
              path: 'home',
            ),
          ],
        ),
      ];
}
