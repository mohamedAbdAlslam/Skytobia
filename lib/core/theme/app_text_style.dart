import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  static const String fontFamily = 'SegoeUI'; // تحديد الخط هنا

  //// Font Size 12
  static const TextStyle f12W400Blue = TextStyle(
    fontFamily: fontFamily, // إضافة الخط هنا
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.underTextField,
  );

  //// Font Size 16
  static const TextStyle f16W400wha = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.wha,
  );

  static const TextStyle f16W400black = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: Colors.black,
  );

  static const TextStyle f16W700Black = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.black,
  );

  ///// Font Size 24
  static const TextStyle f24W400Black = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: AppColors.nearToBlack,
  );
  static const TextStyle f24W400W = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: AppColors.wha,
  );

  ///// Font Size 32
  static const TextStyle f32W700Black = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: Colors.black,
  );

  // Font Size 40
  static const TextStyle f40W700Black = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 40,
    color: Colors.black,
  );

  static const TextStyle f20W700Black = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.black,
  );

  static const TextStyle f20W700white = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.blue,
  );

  // Font size 16 white
  static const TextStyle f17W700White = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.blueAccent,
  );

  // Font size 12
  static const TextStyle f12W400Black = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Colors.black,
  );

  static const TextStyle f14W400gray= TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.grey,
  );

}