import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugasmobile3/Screens/Login/LoginScreens.dart';
import 'package:tugasmobile3/routes.dart';
import 'package:tugasmobile3/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: 'Toko Kue',
    theme: theme(),
    initialRoute: LoginScreens.routeName,
    routes: routes,
  ));
}
