import 'package:domashka/state/reducers/tripsReducer.dart';
import '../appState.dart';
import 'PassengersReducer.dart';
import 'adminReducer.dart';
import 'driverReducer.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
    admin: setAdminReducer(state.admin, action),
    driver: setDriverReducer(state.driver, action),
    trips: setTripsReducer(state.trips, action),
    passengers: setPassengersReducer(state.passengers, action));
