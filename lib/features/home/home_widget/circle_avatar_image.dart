import 'package:flutter/material.dart';

class CircleAvatarImage extends StatelessWidget {
  CircleAvatarImage({super.key, required this.image, required this.radius});

  String image;
  double radius;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        image,
        width: radius * 2,
        height: radius * 2,
        fit: BoxFit.cover,
      ),
    );
  }
}
