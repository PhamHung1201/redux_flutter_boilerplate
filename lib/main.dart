import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_flutter_boilerplate/states/app_state.dart';
import 'package:redux_flutter_boilerplate/store.dart';
import 'package:redux_flutter_boilerplate/ui/count_page.dart';
import 'package:redux/redux.dart';

void main() {
  var store = createStore();
  runApp(App(store));
}

class App extends StatefulWidget {
  final Store<AppState> store;

  App(this.store);

  @override
  State createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
        store: widget.store,
        child: MaterialApp(
          title: 'Redux Flutter',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: CountPage(),
        ));
  }
}
