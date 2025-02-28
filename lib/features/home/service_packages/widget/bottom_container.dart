import 'package:flutter/material.dart';

import '../../../../core/generic_widgets/main_button.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';

class BottomContainer extends StatelessWidget {
   BottomContainer({super.key,required this.text, this.haveButton=true});
  String text;
  bool haveButton ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColors.bottomCont),
      child:Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20.0),
        child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            const Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Price',
                  style: AppTextStyle.f20W700Black,
                ),
                Text(
                  "\$800",
                  style: AppTextStyle.f32W700Black,
                )
              ],
            ),
            Visibility(visible: haveButton,
                child: MainButton(text: text, onPressed: () {  }, isSign: false,bigSize: false,))
          ],
        ),
      ),
    );
  }
}
