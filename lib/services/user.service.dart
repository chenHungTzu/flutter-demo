

import 'package:dependencies/dependencies.dart';
import 'package:flutter_app/services/user.repository.dart';

class UserService {

  UserRepository userRepo;

  UserService(Injector injector){

    userRepo = injector.get<UserRepository>();

  }
}


