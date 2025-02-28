import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/theme/app_colors.dart';
import '../bloc/bottom_navigation_cubit.dart';

class BottomItem extends StatelessWidget {
   BottomItem({super.key,required this.index,required this.image,required this.imageColor});
  int index;
  String image;
  String imageColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 36,
      decoration: BoxDecoration(
        color: BottomNavigationCubit.get(context).index == index
            ? AppColors.secColor.withOpacity(0.2)
            : AppColors.backGround,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: SvgPicture.asset(
            BottomNavigationCubit.get(context).index == index
                ? imageColor
                : image,
          ),
        ),
      ),
    );
  }
}
