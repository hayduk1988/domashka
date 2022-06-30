import 'package:domashka/state/actions/setAdminAction.dart';
import 'package:redux/redux.dart';

dynamic _adminReducer(dynamic store, SetAdminAction action) => action.admin;

final setAdminReducer = TypedReducer<dynamic, SetAdminAction>(_adminReducer);
