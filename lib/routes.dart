
import 'package:get/get.dart';
import 'package:gym_fitness/view/screen/login/auth.dart';
import 'package:gym_fitness/view/screen/onboarding.dart';
import 'package:gym_fitness/view/screen/splash.dart';

import 'core/constants/route.dart';
import 'core/middleware/mymiddleware.dart';
import 'main.dart';

List<GetPage<dynamic>>? routes = [

  // GetPage(name: "/", page: () => const Language(), middlewares: [
  //   MyMiddleWare()
  // ]),

  //

  GetPage(name: "/", page: () => const Splash()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.authentication, page: () => const Auth()),

  //GetPage(name: "/", page: () => MyHomePage(title: 'Home',)),
  //GetPage(name: "/", page: () => const AddressAdd()),
  //GetPage(name: "/", page: () => const Cart()),

  //GetPage(name: "/", page: () => const TestView()),
  //GetPage(name: "/", page: () => const Language()),
  //GetPage(name: "/", page: () => const ProductDetails()),

  // Auth
  //GetPage(name: AppRoute.login, page: () => const Login()),


];