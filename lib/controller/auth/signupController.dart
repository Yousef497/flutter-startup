
import 'package:flutter/material.dart';
import 'package:get/get.dart';


abstract class SignUpController extends GetxController{
  signUp();
  goToSignIn();
  showPassword();
}

class SignUpControllerImp extends SignUpController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  //late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isShowPassword = true;

  // StatusRequest statusRequest = StatusRequest.none;
  // SignupData signupData = SignupData(Get.find());
  // List data = [];

  @override
  void onInit() {
    //username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    //username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  goToSignIn() {
    // TODO: implement goToSignIn
    throw UnimplementedError();
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }


}