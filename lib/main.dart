import 'package:domashka/state/appState.dart';
import 'package:domashka/state/reducers/appReducer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'navigationMiddleware.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Placeholder()),
    );
  }
}
