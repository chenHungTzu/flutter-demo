import 'package:flutter/material.dart';
import 'package:flutter_app/redux/reducer/app.reducers.dart';
import 'package:flutter_app/scoped/app.model.dart';
import 'package:flutter_app/services/user.service.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:inject/inject.dart';

import 'package:redux/redux.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() {
  final Store store = Store<AppState>(appStateReducer,
      initialState: AppState.initialState(), middleware: [thunkMiddleware]);

  runApp(MyApp(store));
}

typedef Provider<T> = T Function();

@module
class MyApp extends StatelessWidget {
  final Store<AppState> store;

  @provide
  UserService service;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {

    print(this.service);
    return StoreProvider<AppState>(
        store: this.store,
        child: ScopedModel<AppModel>(
            model: new AppModel(),
            child: MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: HomePage(title: 'Flutter Demo Home Page'))));
  }
}
