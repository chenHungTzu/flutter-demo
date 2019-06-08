import 'dart:convert';

import 'package:flutter_app/model/user.model.dart';
import 'package:flutter_app/redux/action/user.action.dart';
import 'package:flutter_app/redux/action/counter.action.dart';
import 'package:flutter_app/redux/reducer/app.reducers.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:http/http.dart' as http;

ThunkAction<AppState> userLoginThunk = (Store<AppState> store) async {

  store.dispatch(new fromCounterAddAction());
  store.dispatch(new fromUserLoginAction(new User('anthony', 'ptc12876266')));
};
