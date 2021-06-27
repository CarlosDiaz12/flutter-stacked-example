import 'package:flutter/material.dart';
import 'package:stacked_tutorial/app/locator.dart';
import 'package:stacked_tutorial/ui/smart_widgets/breadcrumb/breadcrumb_viewmodel.dart';

import 'app/app_router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routerDelegate: _appRouter.delegate(
            navigatorObservers: () =>
                <NavigatorObserver>[BreadCrumbViewModel()]),
        routeInformationParser: _appRouter.defaultRouteParser());
  }
}
