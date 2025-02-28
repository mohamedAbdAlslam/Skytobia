import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class Ellipse extends StatelessWidget {
  final Color? color;

  const Ellipse({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color ?? AppColors.primaryColor,
      ),
    );
  }
}
