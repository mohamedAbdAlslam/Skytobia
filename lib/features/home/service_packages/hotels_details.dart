import 'package:Skytopia/features/home/service_packages/widget/bottom_container.dart';
import 'package:Skytopia/features/home/service_packages/widget/extra_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';
class HotelsDetails extends StatelessWidget {
  final PageController pageController = PageController();
  final String nameHotel;
  final double stare;
  final String disc;
  final String location;
  final String city;
  HotelsDetails({super.key ,required this.disc,required this.nameHotel ,required this.location ,required this.city,required this.stare});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 275,
              child: PageView(
                controller: pageController,
                children: [
                  Image.asset("assets/images/png/hotels_details.png"),
                  Image.asset("assets/images/png/hotels_details.png"),
                  Image.asset("assets/images/png/hotels_details.png")
                ],
              ),
            ),
            SizedBox(height: 16),
            SmoothPageIndicator(
              controller: pageController,
              effect: const ExpandingDotsEffect(dotHeight: 8, dotWidth: 8),
              count: 3,
            ),
            SizedBox(height: 8),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            nameHotel,
                            style: AppTextStyle.f24W400Black,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(AppImages.starIcon),
                              Text(
                                stare.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                       Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text("$location _ $city"),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                       Text(
                        disc,
                         style: AppTextStyle.f16W400wha,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Mandatory services',
                        style: AppTextStyle.f24W400Black,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              TextContainer(text: "Room view selection"),
                              TextContainer(text: "Relaxation & Mediation"),
                            ],
                          ),
                          Row(
                            children: [
                              TextContainer(
                                text: "food",
                              ),
                              TextContainer(
                                text: "Sunrise & Sunset",
                              ),
                              TextContainer(
                                text: "Musical events",
                              )
                            ],
                          ),
                          TextContainer(text: "Stargazing")
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        children: [
                          Text(
                            'Extra services (Choose)',
                            style: AppTextStyle.f20W700Black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ExtraServices(text: 'Rommantic Dinner',),
                    ExtraServices(text: 'Rommantic Dinner',),
                    ExtraServices(text: 'Rommantic Dinner',),
                    GestureDetector(onTap: (){

                      Navigator.pushNamed(context, "Booking_details");
                    },
                        child: BottomContainer(text: "Book Now"))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  final String text;

  const TextContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        child: Padding(
          padding:
          const EdgeInsets.only(left: 8, right: 8, bottom: 5.5, top: 5.5),
          child: Text(
            text,
            style: AppTextStyle.f16W400black,
          ),
        ),
        decoration: BoxDecoration(
            color: AppColors.backGround,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black)),
      ),
    );
  }
}
