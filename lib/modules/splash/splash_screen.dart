import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(AppImages.union),
            Image.asset(AppImages.logoFull),
          ],
        ),
      ),
    );
  }
}
