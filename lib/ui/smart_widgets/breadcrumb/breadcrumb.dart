import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:stacked/stacked.dart';
import 'breadcrumb_viewmodel.dart';

class BreadCrumbWidget extends StatelessWidget {
  const BreadCrumbWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BreadCrumbViewModel>.reactive(
      builder: (context, model, _) {
        return Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                GestureDetector(
                  onTap: () => model.addItem(),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            drawer: Drawer(),
            body: Center(
              child: BreadCrumb.builder(
                  divider: Text(' / '),
                  itemCount: model.items.length,
                  builder: (index) {
                    return BreadCrumbItem(content: Text(model.items[index]));
                  }),
            ));
      },
      viewModelBuilder: () => BreadCrumbViewModel(),
    );
  }
}


// ListView.builder(
//                 padding: EdgeInsets.all(8.0),
//                 itemCount: model.items.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: Text('Item'),
//                     title: Text(model.items[index]),
//                   );
//                 })