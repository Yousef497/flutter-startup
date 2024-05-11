import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_fitness/core/constants/color.dart';
import 'package:gym_fitness/main.dart';
import 'package:gym_fitness/view/screen/language.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import '../../core/constants/imageassets.dart';
import 'onboarding.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 250.h,
        duration: 3000,
        pageTransitionType: PageTransitionType.rightToLeft,
        centered: true,
        backgroundColor: AppColors.splashBackground,

        splash: Center(
          child: Column(
            children: [

              SvgPicture.asset(
                AppImageAssets.logo,
                width: 100.w,
                height: 100.h,
              ),

              Lottie.asset(
                AppImageAssets.logoCharacters,
                width: 150.w,
                height: 150.h,
                repeat: false,
                delegates: LottieDelegates(
                  values: [
                    ValueDelegate.colorFilter(
                      ['S', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),
                    ValueDelegate.colorFilter(
                      ['P', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),
                    ValueDelegate.colorFilter(
                      ['A', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),
                    ValueDelegate.colorFilter(
                      ['C1', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),
                    ValueDelegate.colorFilter(
                      ['E', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),

                    ValueDelegate.colorFilter(
                      ['CClub', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),
                    ValueDelegate.colorFilter(
                      ['L', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),
                    ValueDelegate.colorFilter(
                      ['U', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),
                    ValueDelegate.colorFilter(
                      ['B', '**'],
                      value: const ColorFilter.mode(AppColors.logoText, BlendMode.src),
                    ),

                  ],
                ),
              )

            ],
          )
        ),
        nextScreen: const Language()
    );
  }
}

