import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:landing/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'main_layout_viewmodel.dart';

const double _kNavbarHeight = 70;

class MainLayoutView extends StackedView<MainLayoutViewModel> {
  const MainLayoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainLayoutViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: screenHeight(context),
            ),
            child:
                const NestedRouter(), // 👈 This is where the nested content will render
          ),
        ],
      ),
    );
  }

  @override
  MainLayoutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainLayoutViewModel();

  @override
  void onViewModelReady(MainLayoutViewModel viewModel) =>
      SchedulerBinding.instance.addPostFrameCallback(
        (timeStamp) => viewModel.runStartupLogic(),
      );
}
