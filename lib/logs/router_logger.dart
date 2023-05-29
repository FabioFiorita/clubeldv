import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class RouterLogger extends AutoRouterObserver {
  Logger _logger = Logger();
  @override                
  void didPush(Route route, Route? previousRoute) {
    _logger.d('New route pushed: ${route.settings.name}');
  }                                               
 @override                
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
   _logger.d('Tab route visited: ${route.name}');
  }                
  @override                
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    _logger.d('Tab route re-visited: ${route.name}');
  }                               
}                