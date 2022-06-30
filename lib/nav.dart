import 'package:flutter/cupertino.dart';

class NavigateAction {
  final String? toWhere;

  NavigateAction(this.toWhere);
}

class NavigateWithReplacementAction {
  final String toWhere;

  NavigateWithReplacementAction(this.toWhere);
}

class NavigateBackAction {}

class NavigateReplacementAction {
  final String toWhere;

  NavigateReplacementAction(this.toWhere);
}

class NavigatePopUntil {
  final String popUntil;

  NavigatePopUntil({required this.popUntil});
}
