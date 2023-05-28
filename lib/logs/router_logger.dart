import 'package:auto_route/auto_route.dart';
import 'package:clube_ldv/logs/logger.dart';
import 'package:flutter/material.dart';

class RouterLogger extends AutoRouterObserver {                
  @override                
  void didPush(Route route, Route? previousRoute) {                
    logger.d('New route pushed: ${route.settings.name}');                
  }                                               
 @override                
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {                
    logger.d('Tab route visited: ${route.name}');                
  }                
  @override                
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {                
    logger.d('Tab route re-visited: ${route.name}');                
  }                               
}                