import 'package:get/get.dart';

import '../../../core/constants/imageassets.dart';
import '../../model/languagemodel.dart';
import '../../model/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [

  OnBoardingModel(
      title: "GYM Workout",
      body: "Build your muscles and get in shape with us",
      image: AppImageAssets.onBoardingWeightLifting),

  OnBoardingModel(
      title: "Yoga",
      body: "Join our Yoga classes and maintain life balance",
      image: AppImageAssets.onBoardingYoga),

  OnBoardingModel(
      title: "Padel",
      body: "Are you a Padel Player, Gather your friends and book with us",
      image: AppImageAssets.onBoardingPadel),

  OnBoardingModel(
      title: "Live Couching",
      body: "Watch our training videos online",
      image: AppImageAssets.onBoardingLiveCouching),

  OnBoardingModel(
      title: "Nutrition",
      body: "No muscles without good nutrition, so we can recommend you a suitable nutrition plan",
      image: AppImageAssets.onBoardingNutrition),

];

List<LanguageModel> chooseLanguageList = [

  LanguageModel(
      name: "english".tr,
      flag: "🇺🇸",
      languageCode: "en"
  ),

  LanguageModel(
      name: "arabic".tr,
      flag: "🇪🇬",
      languageCode: "ar"
  ),
];
//
// List<OnBoardingModel> onBoardingList= [
//   OnBoardingModel(title: "CHOOSE A PRODUCT", image: AppImageAssets.onBoardingImageOne, body: "Choose your product from \nour E-Commerce shop"),
//   OnBoardingModel(title: "EASY & SAFE PAYMENT",image: AppImageAssets.onBoardingImageTwo, body: "Easy Checkout & Safe Payment methods"),
//   OnBoardingModel(title: "TRACK YOUR ORDER",image: AppImageAssets.onBoardingImageThree, body: "Best Tracker has been used to track your order. You will know where your product is at the moment.")
// ];