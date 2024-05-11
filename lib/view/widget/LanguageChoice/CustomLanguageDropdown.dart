import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constants/color.dart';
import '../../../core/localization/changeLocal.dart';
import '../../../data/datasource/static/static.dart';
import '../../../data/model/languagemodel.dart';

class CustomLanguageDropdown extends StatefulWidget {

  final LocaleController? controller;

  const CustomLanguageDropdown({
    super.key,
    this.controller
  });

  @override
  State<CustomLanguageDropdown> createState() => _CustomLanguageDropdownState();
}

class _CustomLanguageDropdownState extends State<CustomLanguageDropdown> {

  var selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.internalFieldColor,
          border: Border.all(
            color: AppColors.lightBlue,
          ),
          borderRadius: BorderRadius.circular(15)
      ),

      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height / 60, horizontal: MediaQuery.of(context).size.width / 7),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          itemHeight: MediaQuery.of(context).size.height / 14,
          iconSize: MediaQuery.of(context).size.width / 20,
          icon: const Icon(
            Icons.language,
            color: AppColors.greyLight,
          ),
          hint: Text(
            //"Select Language",
            selectedValue == null ? widget.controller!.getLangName() : selectedValue.name,
            style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.greyLight
            ),
          ),

          items: chooseLanguageList
              .map<DropdownMenuItem<LanguageModel>>((lang) => DropdownMenuItem(
            value: lang,
            child: Row(
              children: [
                Text(
                  lang.flag,
                  style: TextStyle(
                      fontSize: 16.sp
                  ),
                ),

                SizedBox(width: MediaQuery.of(context).size.width / 30),

                Text(
                  lang.name.tr,
                  style: TextStyle(
                      fontSize: 16.sp
                  ),
                )
              ],
            ),
          )).toList(),

          //onChanged: widget.onChanged,
          onChanged: (lang) {
            setState(() {
              widget.controller!.changeLang(lang!.languageCode);
              selectedValue = lang;
            });
          },

        ),
      ),

    );
  }
}
