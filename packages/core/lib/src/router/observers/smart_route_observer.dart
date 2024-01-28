import 'dart:developer' as dev;

import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class SmartRouteObserver extends AutoRouteObserver {
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    dev.log(
      'InitTabRoute: ${route.name}; from: ${previousRoute?.name}',
      name: 'SmartRouteObserver',
    );
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    dev.log(
      'ChangeTabRoute: ${route.name}; from: ${previousRoute.name}',
      name: 'SmartRouteObserver',
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    dev.log(
      'Pop: ${route.settings.name}; from: ${previousRoute?.settings.name}',
      name: 'SmartRouteObserver',
    );
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    dev.log(
      'Push: ${route.settings.name}; from: ${previousRoute?.settings.name}',
      name: 'SmartRouteObserver',
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    dev.log(
      'Remove: ${route.settings.name}; from: ${previousRoute?.settings.name}',
      name: 'SmartRouteObserver',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    dev.log(
      'Replace: ${newRoute?.settings.name}; from: ${oldRoute?.settings.name}',
      name: 'SmartRouteObserver',
    );
  }
}
