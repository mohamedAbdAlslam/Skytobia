import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/theme/app_text_style.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(image:DecorationImage(image:
    AssetImage(AppImages.sign),fit: BoxFit.cover),
    ),
      child: Scaffold(backgroundColor: Colors.transparent,
        body: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Image.asset(AppImages.firstOnBoardingImage),
                SvgPicture.asset(
                  alignment: Alignment.bottomCenter,
                  AppImages.onboardingBlur,
                ),
                const Padding(
                  padding:  EdgeInsets.only(bottom: 152, left: 20, right: 20),
                  child: Text(
                    'Discover unlimited luxury among \n the clouds!',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: AppTextStyle.f24W400Black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
