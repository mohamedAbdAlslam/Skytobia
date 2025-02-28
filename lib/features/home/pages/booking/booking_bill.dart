import 'package:Skytopia/features/home/service_packages/widget/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/generic_widgets/top_page.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../home_widget/booking_widget/booking_text.dart';

class BookingBill extends StatelessWidget {
  const BookingBill({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGround,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                TopPage(titlePage: 'BooKing Bill'),
                const SizedBox(
                  height: 41,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 16),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: AssetImage(AppImages.honey),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "marsa house",
                          style: AppTextStyle.f24W400Black,
                        ),
                        Text(
                          "Honeymoon",
                          style: AppTextStyle.f16W400black
                              .copyWith(color: AppColors.innerTextForm),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.starIcon,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "5",
                              style: AppTextStyle.f24W400Black
                                  .copyWith(color: AppColors.secColor),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                BookingText(
                  firstText: 'location',
                  haveSecText: true,
                  secText: "Damascus , Syria",
                ),
                BookingText(
                  firstText: 'Date',
                  haveSecText: true,
                  secText: "8 May - 10 May 2024",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Extra services",
                        style: AppTextStyle.f24W400Black
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                BookingText(
                  firstText: 'Romantic Dinner',
                  haveSecText: false,
                  secText: "",
                ),
                BookingText(
                  firstText: 'Photography',
                  haveSecText: false,
                  secText: "",
                ),
                BookingText(
                  firstText: 'Customizable weather',
                  haveSecText: false,
                  secText: "",
                ),
              ],
            ),
            BottomContainer(text: "price",haveButton: false,),
          ],
        ),
      ),
    );
  }
}
