import 'package:flutter/material.dart';
import 'package:pay_flow/modules/auth/login_screen.dart';
import 'package:pay_flow/shared/themes/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _close() async {
    await Future.delayed(
      Duration(
        seconds: 2,
      ),
    );
    await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
        ),
        (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    _close();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
