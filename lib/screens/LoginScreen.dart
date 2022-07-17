import 'package:assistant_app/commonWidgets/Buttons.dart';
import 'package:assistant_app/commonWidgets/TextField.dart';
import 'package:assistant_app/controllers/LoginController.dart';
import 'package:assistant_app/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenState extends StatefulWidget {
  @override
  _LoginScreenStateState createState() => _LoginScreenStateState();
}

class _LoginScreenStateState extends State<LoginScreenState> {
  final _mailKey = GlobalKey<FormState>();

  final _passKey = GlobalKey<FormState>();

  var _mailController = TextEditingController();

  var _passwordController = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginBody(context),
    );
  }

  Widget LoginBody(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
          child: Text(
            "Giriş Yap",
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Text(
          "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.normal),
        ),
        mailForm(context),
        SizedBox(
          height: 25,
        ),
        passForm(context),
        rememberMe(context),
        SizedBox(
          height: 35,
        ),
        MyButton(() {
          if (!_mailKey.currentState.validate() &&
              !_passKey.currentState.validate()) {
          } else {
            Get.to(HomeScreen());
          }
        }, Colors.green, "Giriş", 60.0, 130.0)
      ],
    );
  }

  mailForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
          left: MediaQuery.of(context).size.width * 0.06,
          right: MediaQuery.of(context).size.width * 0.06),
      child: Form(
          child: Textfield(
              labelText: "e-posta",
              obscureText: false,
              controller: _mailController,
              validator: (text) {
                if (text.isEmpty) {
                  return "Burası Boş olamaz";
                }
              }),
          key: _mailKey,
          autovalidateMode: AutovalidateMode.onUserInteraction),
    );
  }

  passForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.06,
          right: MediaQuery.of(context).size.width * 0.06),
      child: Form(
          child: Textfield(
              labelText: "şifre",
              obscureText: true,
              controller: _passwordController,
              validator: (text) {
                if (text.isEmpty) {
                  return "Burası boş olamaz";
                }
              }),
          key: _passKey,
          autovalidateMode: AutovalidateMode.onUserInteraction),
    );
  }

  rememberMe(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
          child: Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              }),
        ),
        Text("Beni Hatırla"),
      ],
    );
  }
}
