import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';
import 'package:pay_flow/shared/widgets/social_login/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height * .4,
            decoration: BoxDecoration(
              gradient: RadialGradient(radius: 1, colors: [
                AppColors.primary.withOpacity(.7),
                AppColors.primary,
              ]),
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Image.asset(
                    AppImages.person,
                    width: size.width * .65,
                    // height: 300.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                Image.asset(AppImages.logoMini),
                const SizedBox(height: 20.0),
                Text(
                  'Organize seus\nboletos em um\n só lugar',
                  style: TextStyles.titleHome,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SocialLoginButton(
                        onTap: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
