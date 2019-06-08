

import 'package:scoped_model/scoped_model.dart';
import 'system.model.dart';
import 'user.model.dart';

class AppModel extends Model with UserModel , SystemModel {

  AppModel of(context) =>
      ScopedModel.of<AppModel>(context,rebuildOnChange : true);
}