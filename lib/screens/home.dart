import 'package:dependencies/dependencies.dart';
import 'package:dependencies_flutter/dependencies_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/redux/reducer/app.reducers.dart';
import 'package:flutter_app/redux/thunk/user.thunk.dart';
import 'package:flutter_app/scoped/app.model.dart';
import 'package:flutter_app/services/user.service.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> with InjectorWidgetMixin {
  @override
  Widget buildWithInjector(BuildContext context, Injector injector) {
    // TODO: implement buildWithInjector
    final app = AppModel().of(context);
    final store = Singleton.instance.store;
    final service = injector.get<UserService>();

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  '${store.state.userState.user.Id}-${store.state.userState.user.Name}' +
                      '${store.state.counterState.count}'),
              Text(
                '${app.name}',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            app.test();
            store.dispatch(userLoginThunk(context));
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
