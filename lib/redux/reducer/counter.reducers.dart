import 'package:flutter_app/redux/action/Action.dart';

class CounterState  {
  int _count = 0;

  get count => _count;

  CounterState(this._count);

}

CounterState fromCounterReducer(CounterState state, Action action) {

  switch (action.Type) {
    case 'ActionType.add':
      state._count++;
      return state;
    case 'ActionType.divide':
      state._count--;
      return state;
    default:
      return state;
  }
}
