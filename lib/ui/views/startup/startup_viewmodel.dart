import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_tutorial/app/app_router.gr.dart';

class StartupViewModel extends BaseViewModel {
  String _title = 'Startup View';
  String get title => _title;
  // final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome(BuildContext context) async {
    AutoRouter.of(context).push(HomeRoute());
  }
}
