import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/color.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final Size size;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth({Key? key,
    this.obscureText,
    this.onTapIcon,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.size,
    required this.mycontroller,
    required this.valid,
    required this.isNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.transparent
      ),

      child: TextFormField(
        keyboardType: isNumber ? const TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,

        style: const TextStyle(
          color: AppColors.customFieldInputColor,
        ),

        cursorColor: AppColors.customFieldFocusBorderColor,

        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.customFieldFillColor,
          hintText: hinttext.tr,
          hintStyle: const TextStyle(
            fontSize: 12,
            color: AppColors.customFieldPrimaryBorderColor,
          ),

          counterStyle: const TextStyle(
            color: AppColors.customFieldPrimaryBorderColor,
          ),

          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          suffixIcon: InkWell(
            onTap: onTapIcon,
            child: Icon(
              iconData,
              color: AppColors.customFieldIconColor,
            ),
          ),

          label: labeltext == "" ? const SizedBox() : Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(
              labeltext.tr,
              style: const TextStyle(
                color: AppColors.customFieldLabelColor,
              ),
            ),
          ),

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
          ),

          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.customFieldPrimaryBorderColor),
            borderRadius: BorderRadius.circular(25.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.customFieldFocusBorderColor),
            borderRadius: BorderRadius.circular(25.0),
          ),

        ),

      ),
    );
  }
}
