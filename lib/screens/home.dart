import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.model.dart';
import 'package:flutter_app/redux/reducer/app.reducers.dart';
import 'package:flutter_app/redux/thunk/user.thunk.dart';
import 'package:flutter_app/scoped/app.model.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_app/redux/action/user.action.dart';
import 'package:flutter_app/redux/action/counter.action.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final app = AppModel().of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: StoreConnector<AppState, AppState>(
              converter: (store) => store.state,
              builder: (context, rootstate) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        '${rootstate.userState.user.Id}-${rootstate.userState.user.Name}' +
                            '${rootstate.counterState.count}'),
                    Text(
                      '${app.name}',
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ],
                );
              }),
        ),
        floatingActionButton: StoreConnector<AppState, VoidCallback>(
            converter: (store) => () {
                  store.dispatch(userLoginThunk);
                },
            builder: (context, cb) {
              return FloatingActionButton(
                onPressed: () {
                  app.test();
                  cb();
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              );
            }));
  }
}
