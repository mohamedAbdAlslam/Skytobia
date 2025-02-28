import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/theme/app_colors.dart';

class IconImage extends StatelessWidget {
   IconImage({super.key , required this.image, required this.color});
 final String image;
 final bool color ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: Image(color: color? AppColors.backGround: AppColors.secColor,
        image: AssetImage(image),
      ),
    );
  }
}
