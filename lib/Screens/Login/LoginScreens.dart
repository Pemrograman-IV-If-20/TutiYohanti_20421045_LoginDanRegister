import 'package:flutter/material.dart';
import 'package:tugasmobile3/Components/Login/LoginComponent.dart';
import 'package:tugasmobile3/size_config.dart';


class LoginScreens extends StatelessWidget {
  static String routeName = '/sign_in';

  @override

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}