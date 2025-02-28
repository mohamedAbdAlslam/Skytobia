import 'package:flutter/material.dart';


import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import 'div.dart';

class BookingText extends StatelessWidget {
   BookingText({super.key,required this.firstText,required this.haveSecText, this.secText});
   String firstText;
   String? secText;
   bool haveSecText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(firstText ,style: haveSecText? AppTextStyle.f16W400black.copyWith(color: AppColors.innerTextForm):AppTextStyle.f16W400black,),
              Text(secText! ,style:AppTextStyle.f16W400black),
            ],
          ),
        ),
        const Div(),
      ],
    );

  }
}
