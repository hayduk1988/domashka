import 'package:redux/redux.dart';
import '../actions/setTripsAction.dart';

dynamic _tripsReducer(dynamic store, SetTripsAction action) => action.trips;

final setTripsReducer = TypedReducer<dynamic, SetTripsAction>(_tripsReducer);
