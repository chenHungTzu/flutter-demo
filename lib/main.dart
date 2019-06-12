import 'package:flutter/material.dart';
import 'package:flutter_app/redux/reducer/app.reducers.dart';
import 'package:flutter_app/scoped/app.model.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:flutter_app/router.dart';

import 'global.dart';

class Singleton {

  static final Singleton _singleton = new Singleton._internal();


  factory Singleton() {
    return _singleton;
  }

  static Singleton get instance {
    return _singleton;
  }

  Singleton._internal();

  Store<AppState> store = Store<AppState>(appStateReducer,
      initialState: AppState.initialState(), middleware: [thunkMiddleware]);

}

void main() {
  runApp(PTCDemoApp());
}

class PTCDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: Singleton.instance.store, // 設定 store 至 root widget
        child: ScopedModel<AppModel>(
            model: new AppModel(), // 設定 scope model 至 root widget
            child: MaterialApp(
              initialRoute: initialRoute,
              routes: routes,
              title: APP_TITLE,
              theme: ThemeData(
                primarySwatch: Colors.pink,
              ),
            )));
  }
}
