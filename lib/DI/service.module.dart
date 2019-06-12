
import "package:dependencies/dependencies.dart";
import 'package:flutter_app/services/user.service.dart';
import 'package:flutter_app/services/user.repository.dart';

class ServiceModule implements Module {
  @override
  void configure(Binder binder) {
    binder
      //..bindSingleton("https://jsonplaceholder.typicode.com", name: "api_root")
      ..bindLazySingleton<UserService>((i, p) => UserService(i))
      ..bindLazySingleton<UserRepository>((i, p) => UserRepository(i));
  }
}