import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final mailKey = GlobalKey<FormState>();
  final passKey = GlobalKey<FormState>();
  var mailController;
  var passwordController;
  var email = '';
  var pass = '';

  @override
  void onInit() {
    Get.put(LoginController());
    mailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    mailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String validateMail(String email) {
    if (email.isEmpty) {
      return "Burası boş olamaz";
    } else {
      return null;
    }
  }

  String validatePass(String pass) {
    if (email.isEmpty) {
      return "Burası boş olamaz";
    } else {
      return null;
    }
  }

  checkLogin() {
    final isValidateMail = mailKey.currentState.validate();
    final isValidatePass = passKey.currentState.validate();
    if (!isValidatePass || !isValidateMail) {
      return ;
    }else{
      return null;
    }
    mailKey.currentState.save();
    passKey.currentState.save();
  }
}
