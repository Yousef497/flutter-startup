import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/OnBoardingController.dart';
import '../../core/constants/color.dart';
import '../../core/constants/route.dart';
import '../widget/onBoarding/CustomSlider.dart';
import '../widget/onBoarding/DotsController.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp controller = Get.put(OnBoardingControllerImp());
    return  Scaffold(

      floatingActionButton: Container(
        width: 60.r,
        height: 60.r,
        child: FloatingActionButton(
          //backgroundColor: AppColors.floatingButton,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1,color: AppColors.lightBlue),
              borderRadius: BorderRadius.circular(15)
          ),

          onPressed: () {
            // Do something
            //Get.toNamed(AppRoute.onBoarding);
            controller.next();
          },

          child: const Icon(Icons.arrow_forward_ios_outlined, color: AppColors.floatingButtonIcon),
        ),
      ),

      backgroundColor: AppColors.primaryColor,
      body: const Column(
        children: [
          Expanded(
            flex: 9,
            child: CustomSliderOnBoarding()
          ),

          Expanded(
            flex: 1,
            child: CustomDotControllerOnBoarding(),
          ),

        ],
      ),
    );
  }
}
