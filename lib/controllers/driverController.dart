import 'package:domashka/models/driver.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import '../net/api_client.dart';
import '../state/actions/setDriverAction.dart';
import '../state/appState.dart';

ThunkAction<AppState> getDriver() {
  return (Store<AppState> store) {
    _loadDriver(store);
  };
}

Future<dynamic> _loadDriver(Store<AppState> store) async {
  final Driver driver =
      await apiClient(store)!.getDriver(store.state.driver.id);
  store.dispatch(SetDriverAction(driver));
  return driver;
}
