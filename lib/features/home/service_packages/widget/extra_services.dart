import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../home_widget/booking_widget/div.dart';

class ExtraServices extends StatelessWidget {
   ExtraServices({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyle.f16W400black,
          ),
          Image.asset(AppImages.trueCheck)
        ],
      ),
    ),
      const Div(),],);
  }
}
