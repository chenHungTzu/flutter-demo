import 'package:scoped_model/scoped_model.dart';

mixin UserModel on Model {
  var name = '1';
  var position = '';
  var lastLoginTime = '';

  test() {
    this.name += '1';
    notifyListeners();
  }
}
