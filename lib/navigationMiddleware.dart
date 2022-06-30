import 'package:domashka/state/appState.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'nav.dart';

class NavigationMiddleware extends MiddlewareClass<AppState> {
  @override
  void call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is NavigateAction) {
      Keys.navKey.currentState!.pushNamed(action.toWhere!);
    }
    if (action is NavigateWithReplacementAction) {
      Keys.navKey.currentState!.pushNamedAndRemoveUntil(
          action.toWhere, (Route<dynamic> route) => false);
    }
    if (action is NavigateBackAction) {
      Keys.navKey.currentState!.pop();
    }

    if (action is NavigateReplacementAction) {
      Keys.navKey.currentState!.pushReplacementNamed(action.toWhere);
    }

    if (action is NavigatePopUntil) {
      Keys.navKey.currentState!.popUntil(ModalRoute.withName(action.popUntil));
    }
    next(action);
  }
}

class Keys {
  static final navKey = GlobalKey<NavigatorState>();
}
