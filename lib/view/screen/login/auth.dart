
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gym_fitness/core/constants/color.dart';
import '../../widget/login/customCancelButton.dart';
import '../../widget/login/loginForm.dart';
import '../../widget/login/registerForm.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> with SingleTickerProviderStateMixin {

  bool isLogin = true;
  late Animation<double> containerSize;
  late AnimationController animationController;
  Duration animationDuration = const Duration(milliseconds: 270);

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    animationController = AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context).viewInsets.bottom; // to determine keyboard is open or not
    double defaultLoginSize = size.height;// - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.2);

    containerSize = Tween<double>(
      begin: size.height * 0.1,
      end: defaultRegisterSize
    ).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.linear
    ));

    return Scaffold(

      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [

          // Decorations
          Positioned(
            top: size.height * 0.15,
            right: -size.width * 0.1,
            child: Container(
              width: size.width * 0.25,
              height: size.width * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * 0.25 * 0.5),
                color: AppColors.primaryGreen
              ),
            )
          ),

          Positioned(
              top: -size.height * 0.02,
              left: -size.width * 0.02,
              child: Container(
                width: size.width * 0.30,
                height: size.width * 0.30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * 0.30 * 0.5),
                    color: AppColors.primaryGreen
                ),
              )
          ),

          // Login Form
          loginForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultLoginSize: defaultLoginSize
          ),

          // Register Container
          AnimatedBuilder(
            animation: animationController,
            builder: (context, child){
              if (viewInset == 0 && isLogin){
                return buildRegisterContainer();
              } else if (!isLogin){
                return buildRegisterContainer();
              }

              // return empty container to hide widget
              return Container();
            }
          ),

          // Register Form
          RegisterForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultRegisterSize: defaultRegisterSize
          ),

          // Cancel Button
          CustomCancelButton(
            isLogin : isLogin,
            animationController: animationController,
            animationDuration: animationDuration,
            size: size,
            tapEvent: isLogin ? null : () {
              animationController.reverse();
              setState(() {
                isLogin = !isLogin;
              });
            },
          ),

        ],
      ),

    );
  }

  Widget buildRegisterContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: containerSize.value,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100)
            ),
            color: AppColors.loginSecondaryColor
        ),

        alignment: Alignment.center,
        child: GestureDetector(
          onTap: !isLogin ? null : () {
            animationController.forward();
            setState(() {
              isLogin = !isLogin;
            });
          },
          child: isLogin ? Text(
            "Not a Member in our club? Join us now".tr,
            style: TextStyle(
                color: AppColors.textPrimaryColor,
                fontSize: 16.sp
            ),
          ) : null,
        ),
      ),
    );
  }

}






