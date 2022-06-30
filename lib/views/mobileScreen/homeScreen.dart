import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../state/appState.dart';
import '../../viewModels/homeVm.dart';

class MobileHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, HomeViewModel>(
      onInitialBuild: (viewModel) {
        viewModel.fetchDriver();
      },
      converter: (store) => HomeViewModel.fromStore(store),
      builder: (_, viewModel) => content(viewModel, context));

  Widget content(HomeViewModel viewModel, BuildContext context) {
    return Scaffold(body: Center(child: Text(viewModel.driverName ?? '')));
  }
}
