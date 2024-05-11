// Language controller that is responsible for changing language through the whole app


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/appTheme.dart';
import '../services/services.dart';

class LocaleController extends GetxController{
  
  Locale? language;
  
  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;
  
  changeLang(String langCode){
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  String getLangName(){
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    String? langCode;
    if (sharedPrefLang == "ar"){
      return "arabic".tr;
    } else if (sharedPrefLang == "en"){
      return "english".tr;
    } else {
      langCode = Get.deviceLocale!.languageCode;
      if (langCode == "ar"){
        return "arabic".tr;
      }
      else if (langCode == "en"){
        return "english".tr;
      }
      else {
        return "select_language".tr;
      }
    }
  }

  @override
  void onInit(){

    // requestPermissionNotification();
    // fcmconfig();

    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar"){
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en"){
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      //appTheme = themeEnglish;
    }

    super.onInit();
  }
  
}