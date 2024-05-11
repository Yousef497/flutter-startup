import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/color.dart';

class LanguageHeader extends StatelessWidget {
  const LanguageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        "choose_language".tr,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 26.sp,
          color: AppColors.white,
        ),
      ),
    );
  }
}
