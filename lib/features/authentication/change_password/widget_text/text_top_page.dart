import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_style.dart';

class TextTopPage extends StatelessWidget {
   TextTopPage({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15,),
        Text(text,style: AppTextStyle.f24W400Black,),
      ],
    );
  }
}
