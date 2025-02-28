import 'package:flutter/material.dart';

import '../../core/constants/app_images.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed("main_onboarding");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(AppImages.splash),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(
            AppImages.splashLogo,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
