

import 'package:flutter/material.dart';
import 'package:get/get.dart';


abstract class LoginController extends GetxController{
  login();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController phone;
  late TextEditingController password;
  bool isShowPassword = true;

  @override
  void onInit() {
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    // TODO: implement goToForgetPassword
    throw UnimplementedError();
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }



}