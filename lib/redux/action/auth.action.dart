import 'action.dart';

enum ActionType{
  LOGIN,
  LOGIN_SUCCESS,
  LOGIN_FAILED,
  LOGOFF,
  LOGOFF_SUCCESS,
  LOGOFF_FAILED,
}

class LoginAction extends Action {
  @override
  // TODO: implement Type
  String get type => ActionType.LOGIN.toString();

  @override
  // TODO: implement Payload
  get payload => _payload;

  dynamic _payload = null;

  LoginAction(this._payload);

}

class LoginSuccessAction extends Action {
  @override
  // TODO: implement Type
  String get type => ActionType.LOGIN_SUCCESS.toString();

  @override
  // TODO: implement Payload
  get payload => _payload;

  dynamic _payload = null;

  LoginSuccessAction(this._payload);

}

class LoginFailedAction extends Action {
  @override
  // TODO: implement Type
  String get type => ActionType.LOGIN_FAILED.toString();

  @override
  // TODO: implement Payload
  get payload => _payload;

  dynamic _payload = null;

  LoginFailedAction(this._payload);

}

class LogOffAction extends Action {
  @override
  // TODO: implement Type
  String get type => ActionType.LOGOFF.toString();

  @override
  // TODO: implement Payload
  get payload => _payload;

  dynamic _payload = null;

  LogOffAction(this._payload);

}

class LogOffSuccessAction extends Action {
  @override
  // TODO: implement Type
  String get type => ActionType.LOGOFF_SUCCESS.toString();

  @override
  // TODO: implement Payload
  get payload => _payload;

  dynamic _payload = null;

  LogOffSuccessAction(this._payload);

}

class LogOffFailedAction extends Action {
  @override
  // TODO: implement Type
  String get type => ActionType.LOGOFF_FAILED.toString();

  @override
  // TODO: implement Payload
  get payload => _payload;

  dynamic _payload = null;

  LogOffFailedAction(this._payload);

}
