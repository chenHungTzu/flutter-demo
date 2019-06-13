import 'package:flutter_app/model/auth.model.dart';
import 'package:flutter_app/redux/action/action.dart';

class AuthState  {
  User _user = new User(account: '' , password:  '');
  User get user => _user ;

  AuthState(this._user);
}

AuthState redeucer(AuthState state, Action action) {

  switch (action.type) {
    case 'ActionType.LOGIN_SUCCESS':
      return AuthState(action.payload) ;
    default:
      return state;
  }
}
