import 'package:flutter_app/model/auth.model.dart';

import 'auth.reducers.dart' as fromAuthReducer;


class AppState {

  fromAuthReducer.AuthState authState;

  AppState(this.authState);

  AppState.initialState() {

    this.authState = new fromAuthReducer.AuthState(new User(
      account:  '',
      password: '',
    ));
  }
}

AppState appStateReducer(AppState state, action) {
  return AppState(fromAuthReducer.redeucer(state.authState, action));
}
