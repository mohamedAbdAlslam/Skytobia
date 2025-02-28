import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';

class SignWidget extends StatelessWidget {
  final String text;
  final bool isActive;
  final Function onTap;

  SignWidget({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Text(
            text,
            style:isActive? AppTextStyle.f24W400Black.copyWith(fontWeight: FontWeight.w600) :AppTextStyle.f24W400Black),

          Visibility(
            visible: isActive,
            child: Container(
              width: 88,
              height: 3,
              color: AppColors.nearToBlack,
            ),
          ),
        ],
      ),
    );
  }
}
