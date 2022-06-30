import 'package:domashka/state/actions/setDriverAction.dart';
import 'package:redux/redux.dart';

dynamic _driverReducer(dynamic store, SetDriverAction action) => action.driver;

final setDriverReducer = TypedReducer<dynamic, SetDriverAction>(_driverReducer);
