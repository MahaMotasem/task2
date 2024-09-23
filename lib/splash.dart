import 'package:flutter/material.dart';
import 'package:flutter_application_2/helpers/enums.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/onboarding/onboarding_page.dart';
import 'package:flutter_application_2/helpers/shared.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Shared.getBOOL(key: SharedKeys.islastOnBoarding) ? Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      ):
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
            'assets/splash.gif'),
      ),
    );
  }
}
