import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_images.dart';
import '../../core/theme/app_text_style.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed("main_onboarding");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.onBoarding,
              fit: BoxFit.cover,
            ),
          ),
          SvgPicture.asset(
            alignment: Alignment.bottomCenter,
            AppImages.onboardingBlur,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 124, left: 95, right: 95),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome To",
                  style: AppTextStyle.f32W700Black,
                ),
                SvgPicture.asset("assets/images/svg/logo.svg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
