import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';
class SmallCard extends StatelessWidget {
  final String text;
  final String image;

   const SmallCard({super.key, required this.text, required this.image,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: 183,
      decoration: BoxDecoration(
        color: AppColors.nearToW,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
            child: Image.asset(
              image,
              height: 118,
              width: 183,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text.replaceAll(" ", "\n"),
              textAlign: TextAlign.center,
              style: AppTextStyle.f20W700Black.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 0),
        ],
      ),
    );
  }
}
