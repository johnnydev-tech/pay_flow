import 'package:flutter/material.dart';
import 'package:pay_flow/modules/splash/splash_screen.dart';
import 'package:pay_flow/shared/themes/theme_data.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Pay Flow',
        theme: CustomTheme.themeData,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
}
