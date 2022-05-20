import 'package:flutter/material.dart';
import 'package:tugasmobile3/Components/custom_surfix_icon.dart';
import 'package:tugasmobile3/Components/default_button_custome_color.dart';
import 'package:tugasmobile3/Screens/Register/RegisterScreens.dart';
import 'package:tugasmobile3/size_config.dart';
import 'package:tugasmobile3/utils/constants.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? userName;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext contex) {
    return Form(
        child: Column(
      children: [
        buildUserName(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildPassword(),
        SizedBox(height: getProportionateScreenHeight(30)),
        Row(
          children: [
            Checkbox(
                value: remeber,
                onChanged: (value) {
                  setState(() {
                    remeber = value;
                  });
                }),
            Text('Tetap Masuk'),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Lupa Password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "MASUK",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RegisterScreens.routeName);
          },
          child: Text(
            "Belum punya Akun ? Daftar disini",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    ));
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukkan username anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }
}
