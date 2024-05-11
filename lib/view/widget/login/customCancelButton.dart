import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class CustomCancelButton extends StatelessWidget {

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final AnimationController animationController;
  final GestureTapCallback? tapEvent;

  const CustomCancelButton({
    super.key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.animationController,
    required this.tapEvent
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          //color: AppColors.white,
          width: size.width,
          height: size.height * 0.2,
          alignment: Alignment.center,
          child: IconButton(
            icon: const Icon(
              Icons.close,
              color: AppColors.cancelIconButtonColor,
            ),
            onPressed: tapEvent,
          ),
        ),
      ),
    );
  }
}
