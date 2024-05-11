import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/color.dart';

class CustomFieldButton extends StatelessWidget {

  final String buttonLabel;
  final Size size;
  final void Function()? onTap;

  const CustomFieldButton({
    super.key,
    required this.buttonLabel,
    required this.size,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.customButtonPrimaryColor
        ),

        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(
          buttonLabel.tr,
          style: const TextStyle(
              color: AppColors.customButtonTextPrimaryColor
          ),
        ),
      ),
    );
  }
}
