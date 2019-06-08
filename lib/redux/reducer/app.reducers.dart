import 'package:flutter_app/model/user.model.dart';
import 'package:flutter_app/redux/reducer/user.reducers.dart';
import 'package:flutter_app/redux/reducer/counter.reducers.dart';

class AppState {
  CounterState counterState;
  UserState userState;

  AppState(this.counterState, this.userState);

  AppState.initialState() {
    this.counterState = new CounterState(0);
    this.userState = new UserState(new User());
  }
}

AppState appStateReducer(AppState state, action) {
  return AppState(
      fromCounterReducer(state.counterState, action),
      fromUserReducer(state.userState, action));
}
