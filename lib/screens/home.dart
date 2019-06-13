import 'package:dependencies/dependencies.dart';
import 'package:dependencies_flutter/dependencies_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/scoped/app.model.dart';
import 'package:flutter_app/services/user.service.dart';
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
  final store = Singleton.instance.store;

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
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(store.state.authState.user.account),
              accountEmail: new Text(store.state.authState.user.password),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            ListTile(
              title: new Text('登出'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              '${store.state.authState.user.account}-${store.state.authState.user.password}'),
          Text(
            '123',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      )),
    );
  }
}
