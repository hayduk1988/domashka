import 'package:redux/redux.dart';

import '../controllers/driverController.dart';
import '../state/appState.dart';

class HomeViewModel {
  final Function() fetchDriver;
  final Function() dummy2;
  String? driverName;

  HomeViewModel({
    required this.fetchDriver,
    required this.dummy2,
    required this.driverName,
  });

  static HomeViewModel fromStore(Store<AppState> store) {
    return HomeViewModel(
      driverName: store.state.driver.name,
      fetchDriver: () {
        getDriver();
      },
      dummy2: () {},
    );
  }
}
