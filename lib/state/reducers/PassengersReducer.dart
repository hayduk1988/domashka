import 'package:redux/redux.dart';
import '../actions/setPassengersAction.dart';

dynamic _passengersReducer(dynamic store, SetPassengersAction action) =>
    action.passengers;

final setPassengersReducer =
    TypedReducer<dynamic, SetPassengersAction>(_passengersReducer);
