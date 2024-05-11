import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/OnBoardingController.dart';
import '../../../core/constants/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val){
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [

            SizedBox(height: MediaQuery.of(context).size.height / 7),

            Container(
              width: 320.r,
              height: 290.r,
              decoration: BoxDecoration(
                color: AppColors.greySVG,
                border: Border.all(
                  width: 2.r,
                  color: AppColors.white
                ),
                borderRadius: BorderRadius.circular(30.r),
              ),

              child: Image.asset(
                onBoardingList[i].image,
              )

            ),


            SizedBox(height: MediaQuery.of(context).size.height / 30),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              color: AppColors.transparent,
              height: 50.r,
              width: 320.r,
              child: Text(
                onBoardingList[i].title,
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //SizedBox(height: MediaQuery.of(context).size.height / 30),

            Container(
              margin: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
              color: AppColors.transparent,
              width: 320.r,
              child: Text(
                onBoardingList[i].body,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 20.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        )
    );
  }
}
