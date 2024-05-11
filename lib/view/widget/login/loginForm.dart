import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/auth/loginController.dart';
import '../../../core/constants/color.dart';
import '../../../core/functions/validinput.dart';
import 'CustomFieldButton.dart';
import 'customPhoneForm.dart';
import 'customTextForm.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  });

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: GetBuilder<LoginControllerImp>(
        builder: (controller) =>
        Align(
          alignment: Alignment.center,
          child: Form(
            key: controller.formstate,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                height: defaultLoginSize,
                //color: AppColors.primaryColor,
            
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
            
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
            
                    SizedBox(height: size.height * 0.01),
            
                    Image.asset(
                      "assets/img/login.png",
                      height: size.height * 0.3,
                    ),
            
                    SizedBox(height: size.height * 0.01),
            
                    // Login
                    CustomPhoneForm(
                      hinttext: "Enter your Phone",
                      labeltext: 'Phone',
                      countryInitials: "EG",
                      iconData: Icons.phone_android_outlined,
                      size: size,
                      mycontroller: controller.phone,
                    ),
            
                    //SizedBox(height: size.height * 0.01),

                    GetBuilder<LoginControllerImp>(
                      builder: (controller) =>
                          CustomTextFormAuth(
                            isNumber: false,
                            size: size,
                            obscureText: controller.isShowPassword,
                            onTapIcon: (){
                              controller.showPassword();
                            },
                            valid: (val){
                              return validInput(val!, 6, 30, "password");
                            },
                            hinttext: "Enter your Password",
                            labeltext: 'password',
                            iconData: Icons.lock_outline_rounded,
                            mycontroller: controller.password,
                          ),
                    ),
            
                    SizedBox(height: size.height * 0.01),
            
                    CustomFieldButton(
                      buttonLabel: "sign in",
                      size: size,
                      onTap: () {},
                    ),
            
            
                  ],
                ),
            
              ),
            ),
          ),
        ),
      ),
    );
  }
}