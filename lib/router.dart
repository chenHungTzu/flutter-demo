import 'package:dependencies/dependencies.dart';
import 'package:dependencies_flutter/dependencies_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/login.dart';

import 'DI/service.module.dart';


/**
 * 定義 init Router
 */
final initialRoute = '/';

/**
 * 定義Router
 */
final routes = {
  '/': (context) => getInjectRouter(LoginPage(title: '登入')),
  '/home': (context) => getInjectRouter(HomePage(title: '首頁'))
};


/**
 * 取得DI Router
 */
InjectorWidget getInjectRouter(Widget widget) {
  return InjectorWidget(
      injector: Injector.fromModule(module: ServiceModule()), child: widget);
}
