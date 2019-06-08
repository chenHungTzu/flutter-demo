

import 'Action.dart';

enum ActionType{
  add,
  divide,
}

class fromCounterAddAction extends Action {
  var Type = ActionType.add.toString();

}

class fromCounterDivideAction extends Action {
  var Type = ActionType.divide.toString();
}