import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/theme/app_text_style.dart';
import 'icon_image.dart';

class LoginWith extends StatelessWidget {
   LoginWith ({super.key ,required this.color});
  final bool color ;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
       color? 'or sign up with':'or',
        style:color? AppTextStyle.f16W400wha:AppTextStyle.f16W400black,
      ),
       SizedBox(
        height:color? 20:30,
      ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconImage(image: AppImages.facebook, color: color,),
          const SizedBox(
            width: 48,
          ),
          IconImage(image: AppImages.x, color: color,),
          const SizedBox(
            width: 48,
          ),
          IconImage(image: AppImages.google, color: color,),
        ],
      ),
    ],);
  }
}
