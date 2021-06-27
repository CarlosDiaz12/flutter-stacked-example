// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../ui/smart_widgets/breadcrumb/breadcrumb.dart' as _i3;
import '../ui/views/home/home_view.dart' as _i5;
import '../ui/views/reactive_example/reactive_example_view.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    BreadCrumbWidget.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.BreadCrumbWidget();
        }),
    ReactiveExampleRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.ReactiveExampleView();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HomeView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(BreadCrumbWidget.name, path: '/'),
        _i1.RouteConfig(ReactiveExampleRoute.name,
            path: '/reactive-example-view'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-view')
      ];
}

class BreadCrumbWidget extends _i1.PageRouteInfo {
  const BreadCrumbWidget() : super(name, path: '/');

  static const String name = 'BreadCrumbWidget';
}

class ReactiveExampleRoute extends _i1.PageRouteInfo {
  const ReactiveExampleRoute() : super(name, path: '/reactive-example-view');

  static const String name = 'ReactiveExampleRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-view');

  static const String name = 'HomeRoute';
}
