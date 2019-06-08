import 'package:flutter_app/model/user.model.dart';

import 'Action.dart';

enum ActionType{
  login,
  logout,
}

class fromUserLoginAction extends Action {

  var Type = ActionType.login.toString();

  dynamic Payload ;

  fromUserLoginAction(this.Payload);
}


class fromUserLogoutAction extends Action {
  var Type = ActionType.login.toString();
}