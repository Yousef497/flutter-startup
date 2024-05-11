import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constants/color.dart';
import '../../core/constants/route.dart';
import '../../core/localization/changeLocal.dart';
import '../widget/LanguageChoice/CustomLanguageDropdown.dart';
import '../widget/LanguageChoice/LanguageHeader.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LocaleController());
    return GetBuilder<LocaleController>(
      builder: (controller) =>
          Scaffold(
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
                  Get.toNamed(AppRoute.onBoarding);
                },

                child: const Icon(Icons.arrow_forward_ios_outlined, color: AppColors.floatingButtonIcon),
              ),
            ),

            body: Container(
              //padding: const EdgeInsets.all(15),
              width: double.infinity,
              height: double.infinity,
              color: AppColors.primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const LanguageHeader(),

                  CustomLanguageDropdown(controller: controller),


                ],
              ),
            ),
          ),
    );
  }
}
