import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class Div extends StatelessWidget {
  const Div({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
    color: AppColors.secColor,
    thickness: 0.25,
    height: 20,
    );
  }
}
