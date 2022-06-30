import 'package:domashka/state/appState.dart';
import 'package:domashka/state/reducers/appReducer.dart';
import 'package:domashka/views/mobileScreen/homeScreen.dart';
import 'package:domashka/views/webScreens/webHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'navigationMiddleware.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  final Store<AppState> store = Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      LoggingMiddleware.printer(
          formatter: LoggingMiddleware.multiLineFormatter),
      NavigationMiddleware(),
      thunkMiddleware,
    ],
  );
  runApp(StoreProvider(store: store, child: const MaterialApp(home: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: (kIsWeb) ? MobileHomeScreen() : MobileHomeScreenWeb(),
    );
  }
}
