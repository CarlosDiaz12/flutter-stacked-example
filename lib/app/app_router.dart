import 'package:auto_route/auto_route.dart';
import 'package:stacked_tutorial/ui/smart_widgets/breadcrumb/breadcrumb.dart';
import 'package:stacked_tutorial/ui/views/home/home_view.dart';
import 'package:stacked_tutorial/ui/views/reactive_example/reactive_example_view.dart';

@MaterialAutoRouter(replaceInRouteName: 'View,Route', routes: <AutoRoute>[
  AutoRoute(page: BreadCrumbWidget, initial: true),
  AutoRoute(page: ReactiveExampleView),
  AutoRoute(page: HomeView)
])
class $AppRouter {}
