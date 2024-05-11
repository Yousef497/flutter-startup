import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_fitness/core/constants/color.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneForm extends StatelessWidget {

  final String hinttext;
  final String labeltext;
  final String countryInitials;
  final IconData iconData;
  final Size size;
  final TextEditingController? mycontroller;
  //final String? Function(String?) valid;
  final void Function()? onTapIcon;

  const CustomPhoneForm({
    super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.size,
    required this.mycontroller,
    //required this.valid,
    this.countryInitials = "US",
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.transparent
      ),

      child: IntlPhoneField(

        //validator: valid,

        controller: mycontroller,

        style: const TextStyle(
          color: AppColors.customFieldInputColor,
        ),

        dropdownIcon: const Icon(
          Icons.arrow_drop_down,
          color: AppColors.customFieldPrimaryBorderColor,
        ),

        dropdownTextStyle: const TextStyle(
          color: AppColors.customFieldPrimaryBorderColor,
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

            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                labeltext.tr,
                style: const TextStyle(
                  color: AppColors.customFieldLabelColor,
                ),
              ),
            ),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
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


        initialCountryCode: countryInitials,

        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}
