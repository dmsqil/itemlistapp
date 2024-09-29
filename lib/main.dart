import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'store/app_state.dart';
import 'store/reducers.dart';
import 'screens/home_screen.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState.initial());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Redux Example',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(),
      ),
    );
  }
}
