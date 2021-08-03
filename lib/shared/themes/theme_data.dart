import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class CustomTheme {
  static ThemeData get themeData {
    final themeData = ThemeData(
      backgroundColor: AppColors.background,
      scaffoldBackgroundColor: AppColors.background,
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primary.withOpacity(0.5),
      accentColor: AppColors.primary,
      hintColor: AppColors.grey,
      buttonColor: AppColors.primary,
    );
    return themeData;
  }
}
