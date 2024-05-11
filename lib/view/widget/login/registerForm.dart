import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signupController.dart';
import '../../../core/constants/color.dart';
import '../../../core/functions/validinput.dart';
import 'CustomFieldButton.dart';
import 'customPhoneForm.dart';
import 'customTextForm.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultRegisterSize,
  });

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultRegisterSize;

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) =>
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                height: defaultRegisterSize,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SizedBox(height: size.height * 0.1),

                    Text(
                      "Welcome",
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

                    CustomTextFormAuth(
                      isNumber: false,
                      size: size,
                      valid: (val){
                        return validInput(val!, 5, 100, "email");
                      },
                      hinttext: "Enter your E-mail",
                      labeltext: 'e-mail',
                      iconData: Icons.email_outlined,
                      mycontroller: controller.email,
                    ),

                    SizedBox(height: size.height * 0.01),

                    CustomPhoneForm(
                      hinttext: "Enter your Phone",
                      labeltext: 'Phone',
                      countryInitials: "EG",
                      iconData: Icons.phone_android_outlined,
                      size: size,
                      mycontroller: controller.phone,
                    ),

                    //SizedBox(height: size.height * 0.01),

                    GetBuilder<SignUpControllerImp>(
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
                      buttonLabel: "sign up",
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