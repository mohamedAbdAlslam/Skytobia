import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.disc,
    required this.image,
    required this.nameHotel,
    required this.star,
    required this.location,
    required this.vister,
  });

  final String nameHotel;
  final String location;
  final double star;
  final String image;
  final int vister;
  final String disc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( height: 202,
          // margin: const EdgeInsets.only(left: 8,right: 8),
          decoration: BoxDecoration(image: DecorationImage(image:  AssetImage(
            image,
          ),
            fit: BoxFit.cover,
           ),
              borderRadius:const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
          ),
        ),

              Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(24),
                        bottomLeft: Radius.circular(24),
                      ),
                      child: Container(
                        decoration:const  BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                          color:AppColors.nearToW,
                        ),
                        height: 77,
                        width: 392,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nameHotel,
                              style: AppTextStyle.f20W700white.copyWith(
                                color: AppColors.nearToBlack,
                              ),
                            ),
                            Text(
                              location,
                              style: AppTextStyle.f16W400black,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellowAccent,
                                  size: 32,
                                ),
                                Text(
                                  star.toString(),
                                  style: AppTextStyle.f16W400black,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                 " ${vister.toString()} ",
                                  style: AppTextStyle.f16W400black,
                                ),
                                const Text("Residents",style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400,color: AppColors.nearToBlack),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],


    );
  }
}
