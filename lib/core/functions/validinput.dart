import 'package:get/get.dart';

validInput(String val, int min, int max, String type){

  if (val.isEmpty){
    return "Can't be Empty".tr;
  }

  if (val.length < min){
    return "${"Can't be less than".tr} $min";
  }

  if (val.length > max){
    return "${"Can't be more than".tr} $max";
  }

  if (type == "username"){
    if (!GetUtils.isUsername(val)){
      return "Not Valid Username".tr;
    }
  }

  if (type == "email"){
    if (!GetUtils.isEmail(val)){
      return "Not Valid E-mail".tr;
    }
  }

  if (type == "phone"){
    if (!GetUtils.isPhoneNumber(val)){
      return "Not Valid Phone Number".tr;
    }
  }

}