import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/theme/app_text_style.dart';


class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(image:DecorationImage(image:
    AssetImage(AppImages.secondOnBoardingImage),fit: BoxFit.cover),
    ),
      child: Scaffold(backgroundColor: Colors.transparent,
        body: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [

                SvgPicture.asset(
                  alignment: Alignment.bottomCenter,
                  AppImages.onboardingBlur,
                ),
                Padding(
                  padding:  const EdgeInsets.only(bottom: 152, left: 32, right: 32),
                  child: Text(
                    'Book your magical moments in\n the clouds',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.f24W400W,
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
