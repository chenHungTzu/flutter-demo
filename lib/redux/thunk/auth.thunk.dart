import 'package:flutter/widgets.dart';
import 'package:flutter_app/redux/reducer/app.reducers.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> LoginThunk(BuildContext context) =>
    (Store<AppState> store) async {
 /*     store.dispatch(new fromCounterAddAction());
      store.dispatch(
          new fromUserLoginAction(new User('anthony', 'ptc12876266')));*/


      Navigator.pushNamed(context, '/home');
    };
