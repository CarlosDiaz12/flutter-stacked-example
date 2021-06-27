import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_tutorial/ui/smart_widgets/double_increase_counter/double_increase_counter.dart';
import 'package:stacked_tutorial/ui/smart_widgets/single_increase_counter/single_increase_counter.dart';
import 'reactive_example_viewmodel.dart';

class ReactiveExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReactiveExampleViewModel>.nonReactive(
      builder: (ctx, model, child) {
        print('PartialBuildsView rebuilt');
        return Scaffold(
          body: Center(
            child: Row(
              children: [
                SingleIncreaseCounter(),
                SizedBox(
                  width: 50,
                ),
                DoubleIncreaseCounter(),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => ReactiveExampleViewModel(),
    );
  }
}
