import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        height: 52.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: .5,
                      color: AppColors.stroke,
                    ),
                  ),
                ),
                child: Image.asset(AppImages.google),
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                'Entrar com Google',
                textAlign: TextAlign.center,
                style: TextStyles.buttonGray,
              ),
            ),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        primary: AppColors.shape,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            width: .5,
            color: AppColors.stroke,
          ),
        ),
      ),
    );
  }
}
