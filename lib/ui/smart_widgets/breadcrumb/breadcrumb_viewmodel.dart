import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class BreadCrumbViewModel extends BaseViewModel with NavigatorObserver {
  final List<String> _items = ['Inicio', 'Consulta de propspecto'];
  List<String> get items => _items;

  addItem() {
    var item = 'Next Item';
    _items.add(item);
    notifyListeners();
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    addItem();
  }
}
