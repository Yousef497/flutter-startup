import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gym_fitness/routes.dart';
import 'package:gym_fitness/view/screen/login/auth.dart';

import 'bindings/initialbindings.dart';
import 'core/localization/changeLocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  //runApp(const MyApp());

  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools
      ],
      builder: (context) => const MyApp()
    )
      //const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child){
        return GetMaterialApp(
          translations: MyTranslation(),
          debugShowCheckedModeBanner: false,

          title: 'Flutter Demo',

          locale: controller.language,
          theme: controller.appTheme,
          initialBinding: InitialBindings(),

          getPages: routes,

          //home: Language(),
          //home: Auth(),
          //home: ForgetPassword(),
          //home: Test(),
          //routes: routes,
        );
      }
    );

    // return GetMaterialApp(
    //   translations: MyTranslation(),
    //   debugShowCheckedModeBanner: false,
    //
    //   title: 'Flutter Demo',
    //
    //   locale: controller.language,
    //   theme: controller.appTheme,
    //   initialBinding: InitialBindings(),
    //
    //   getPages: routes,
    //
    //   //home: const Language(),
    //   //home: ForgetPassword(),
    //   //home: Test(),
    //   //routes: routes,
    // );
  }
}

