import 'package:flutter/cupertino.dart';
import 'package:tugasmobile3/Screens/Login/LoginScreens.dart';
import 'package:tugasmobile3/Screens/Register/RegisterScreens.dart';

final Map<String, WidgetBuilder> routes={

  LoginScreens.routeName:(context) => LoginScreens(),
  RegisterScreens.routeName:(context) => RegisterScreens()
};