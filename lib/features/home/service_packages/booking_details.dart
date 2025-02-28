import 'package:Skytopia/features/home/service_packages/widget/bottom_container.dart';
import 'package:Skytopia/features/home/service_packages/widget/payment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/generic_widgets/main_button.dart';
import '../../../core/generic_widgets/top_page.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_style.dart';
import '../home_widget/booking_widget/div.dart';
class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:AppColors.backGround,

        body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TopPage(titlePage: 'Booking Details',),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Location',
                    style: AppTextStyle.f24W400Black,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                   Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black12)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppImages.locationIcon),
                          const Text("  Damascus, syria"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                 const Text(
                    'Date',
                    style: AppTextStyle.f24W400Black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.black12)),
                        child:const Padding(
                          padding:  EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month),
                              Text(" 8May - 10May 2025"),
                            ],
                          ),
                        ),
                      ),
                      Container(width: 75,height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.black12)),
                        child:const Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SvgPicture.asset(AppImages.locationIcon),
                            Icon(Icons.person),
                            Text(" 5"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const  Padding(
                  padding:  EdgeInsets.only(left: 20, right: 20, bottom: 8),
                  child: Text(
                    'Payment By',
                    style: AppTextStyle.f24W400Black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PaymentWidget(image: AppImages.visaCard, visaNumber: "Visa ****5678"),
                      Image.asset(AppImages.trueCheck)
                    ],
                  ),
                ),
               const Div(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PaymentWidget(image: AppImages.masterCard, visaNumber: 'Master Card ****5678'),
                      Image.asset(AppImages.trueCheck)
                    ],
                  ),
                ),
                  const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20, top: 8),
                  child: MainButton(
                    text: "Add payment method",onPressed: (){},
                    // onPressed: () {
                    //   showSuccessDialog(context);
                    // },
                    isSign: true,
                  ),
                ),
              ],
            ),
            GestureDetector(onTap: (){showSuccessDialog(context);},
                child: BottomContainer(text: "Done"))
          ],
        ),
      ),
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check_circle, color: AppColors.secColor, size: 100),
          const SizedBox(height: 16),
          const Text(
            "The Seizure was successful",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Done", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const SuccessDialog();
    },
  );
}
