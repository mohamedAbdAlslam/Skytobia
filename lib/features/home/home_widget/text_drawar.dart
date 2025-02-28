import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';

class TextDrawar extends StatelessWidget {
  TextDrawar({super.key, required this.text, required this.hasIcon,this.icon});

  String text;
  IconData? icon;

  bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Visibility(visible: hasIcon,
            child: SizedBox(
              width: 16,
              height: 16,
             child: Icon(icon,color: AppColors.backGround,),
        ),
        ),
        Visibility(child:const SizedBox(width: 16,),visible:!hasIcon ,),
        SizedBox(width: 12,),
        Text(
          text,
          style:
              AppTextStyle.f16W400black.copyWith(color: AppColors.backGround),
        ),
      ],
    );
  }
}
