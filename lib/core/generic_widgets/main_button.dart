import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSign;
  bool bigSize ;

   MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isSign,
    this.bigSize = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: bigSize ?376:211,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: isSign ?AppColors.buttonColor: AppColors.secColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(68),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor:isSign ?AppColors.buttonColor: AppColors.secColor,
              fixedSize: const Size(368, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(68),
              ),
            ),
            child: Text(
              text,
              style:  TextStyle(
                color: isSign ? AppColors.secColor:AppColors.backGround,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}