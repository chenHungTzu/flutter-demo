import 'package:flutter_app/model/user.model.dart';
import 'package:flutter_app/redux/action/Action.dart';

class UserState  {
  User _user = new User('','');

  get user => _user;

  UserState(this._user);

}

UserState fromUserReducer(UserState state, Action action) {

  switch (action.Type) {
    case 'ActionType.login':
      return UserState(action.Payload);
    case 'ActionType.logout':
      return UserState(new User());
    default:
      return state;
  }
}
